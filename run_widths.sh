#!/bin/bash
set -e
for w in 1 4 8 16; do
  if [ $w -eq 16 ]; then D=100; P=50; else D=80; P=40; fi
  cat > config_w$w.json <<EOF
{
  "DESIGN_NAME": "rev_alu_w$w",
  "PDK": "sky130A",
  "STD_CELL_LIBRARY": "sky130_fd_sc_hd",
  "VERILOG_FILES": ["dir::src/rev_alu.v", "dir::src/rev_alu_wrappers.v"],
  "CLOCK_PORT": null,
  "PNR_SDC_FILE": "dir::constraints.sdc",
  "SIGNOFF_SDC_FILE": "dir::constraints.sdc",
  "FP_SIZING": "absolute",
  "DIE_AREA": [0, 0, $D, $D],
  "PL_TARGET_DENSITY_PCT": 45,
  "PDN_VPITCH": $P,
  "PDN_HPITCH": $P
}
EOF
  librelane --run-tag w$w --overwrite config_w$w.json
done

python3 - << 'EOF'
import json
print(f"{'bits':>4} {'area_um2':>9} {'tt_ns':>6} {'ss_ns':>6} {'DRC':>4} {'LVS':>4}")
for w in (1, 4, 8, 16):
    m = json.load(open(f"runs/w{w}/final/metrics.json"))
    tt = 40 - m["timing__setup__ws__corner:nom_tt_025C_1v80"]
    ss = 40 - m["timing__setup__ws__corner:nom_ss_100C_1v60"]
    print(f"{w:>4} {m['design__instance__area__stdcell']:>9.1f} {tt:>6.2f} {ss:>6.2f} "
          f"{m['route__drc_errors']:>4} {m['design__lvs_error__count']:>4}")
EOF
