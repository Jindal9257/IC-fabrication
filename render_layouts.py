# Batch-render PNG images of all layouts for the report.
# Run from the design folder:  klayout -b -r render_layouts.py
import os, glob, pya

pdk = os.environ.get("PDK_ROOT", "/foss/pdks")
lyp = f"{pdk}/sky130A/libs.tech/klayout/tech/sky130A.lyp"

jobs = {f"w{w}": f"runs/w{w}/final/gds/rev_alu_w{w}.gds" for w in (1, 4, 8, 16)}
tops = sorted(glob.glob("runs/RUN_*/final/gds/rev_alu_top.gds"), key=os.path.getmtime)
if tops:
    jobs["top"] = tops[-1]

for name, gds in jobs.items():
    if not os.path.exists(gds):
        print("skip (missing):", gds)
        continue
    lv = pya.LayoutView()
    lv.load_layout(gds, True)
    lv.load_layer_props(lyp)
    lv.add_missing_layers()
    lv.max_hier()
    lv.zoom_fit()
    out = f"images/layout_{name}.png"
    lv.save_image(out, 1800, 1800)
    print("wrote", out)
