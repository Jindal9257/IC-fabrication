# Render selected signals of a VCD file to PNG (no GTKWave needed).
# Usage: python3 wave/plot_wave.py tb_wave.vcd   -> wave_16bit.png, wave_all.png
import sys, matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

def read_vcd(path, scope="tb_wave"):
    import re
    ids, widths, stack, sig = {}, {}, [], {}
    t, end = 0, 0
    m = re.search(r"\$timescale\s+(\d+)\s*(\w+)\s+\$end", open(path).read())
    unit = {"s":1e9,"ms":1e6,"us":1e3,"ns":1.0,"ps":1e-3,"fs":1e-6}
    scale = int(m.group(1))*unit[m.group(2)] if m else 1.0
    with open(path) as f:
        in_defs = True
        for line in f:
            p = line.split()
            if not p: continue
            if in_defs:
                if p[0] == "$scope": stack.append(p[2])
                elif p[0] == "$upscope": stack.pop()
                elif p[0] == "$var" and stack == [scope]:
                    ids[p[3]] = p[4]; widths[p[4]] = int(p[2]); sig[p[4]] = []
                elif p[0] == "$enddefinitions": in_defs = False
                continue
            if p[0][0] == "#":
                t = int(p[0][1:]) * scale; end = max(end, t)
            elif p[0][0] in "01xz" and len(p[0]) > 1 and p[0][1:] in ids:
                sig[ids[p[0][1:]]].append((t, p[0][0]))
            elif p[0][0] == "b" and len(p) == 2 and p[1] in ids:
                sig[ids[p[1]]].append((t, p[0][1:]))
    return sig, widths, end

def to_int(v):
    try: return int(v, 2)
    except ValueError: return None

def plot(sig, widths, end, names, out, title):
    fig, axes = plt.subplots(len(names), 1, figsize=(14, 0.7*len(names)+1.2), sharex=True)
    for ax, n in zip(axes, names):
        ev = sig.get(n, [])
        xs = [e[0] for e in ev] + [end]
        for i, (tt, v) in enumerate(ev):
            nxt = xs[i+1]
            val = to_int(v)
            if widths[n] == 1:
                y = 1 if v == "1" else 0
                ax.hlines(y, tt, nxt, color="tab:blue")
                if i+1 < len(ev):
                    ax.vlines(nxt, 0, 1, color="tab:blue")
                ax.set_ylim(-0.3, 1.3)
            else:
                ax.hlines([0, 1], tt, nxt, color="tab:blue")
                ax.vlines(tt, 0, 1, color="tab:blue")
                ax.text((tt+nxt)/2, 0.5, "x" if val is None else f"{val:X}",
                        ha="center", va="center", fontsize=7)
                ax.set_ylim(-0.3, 1.3)
        ax.set_yticks([])
        ax.set_ylabel(n, rotation=0, ha="right", va="center", fontsize=8)
        for s in ("top", "right"): ax.spines[s].set_visible(False)
    axes[-1].set_xlabel("time (ns)")
    fig.suptitle(title); fig.tight_layout()
    fig.savefig(out, dpi=150); plt.close(fig); print("wrote", out)

if __name__ == "__main__":
    sig, widths, end = read_vcd(sys.argv[1] if len(sys.argv) > 1 else "tb_wave.vcd")
    plot(sig, widths, end, ["SEL","CIN","A16","B16","F16","COUT16","V16","PARITY16"],
         "wave_16bit.png", "16-bit ALU (hex values)")
    plot(sig, widths, end, ["SEL","CIN","F1","F4","F8","F16","COUT1","COUT4","COUT8","COUT16"],
         "wave_all.png", "All widths: results and carry-out")
