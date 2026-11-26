#!/bin/bash
set -e
echo "=== 1. Gate reversibility + reversible-ALU ≡ RTL equivalence ==="
iverilog -g2012 -o sim_gates \
  src/rev_gates.v src/rev_alu_gates.v src/rev_alu.v src/tb_rev_gates.v
vvp sim_gates

echo; echo "=== 2. Exhaustive testbench for reversible ALU (A) ==="
iverilog -g2012 -o sim_gates_alu \
  src/rev_gates.v src/rev_alu_gates.v src/tb_rev_alu_gates.v
vvp sim_gates_alu

echo; echo "=== 3. Exhaustive testbench for RTL ALU (B) ==="
iverilog -g2012 -o sim_rtl \
  src/rev_alu.v src/rev_alu_top.v src/tb_rev_alu_top.v
vvp sim_rtl

echo; echo "All simulations finished."
