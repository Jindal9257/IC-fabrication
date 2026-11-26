//============================================================
// rev_alu_top.v -- hardening wrapper: 1/4/8/16-bit rev_alu
// Each instance has its own A/B/outputs so Yosys cannot merge
// the low bits of the wider ALUs with the narrower ones
// (SEL and CIN are shared to save pins).
//============================================================
`timescale 1ns/1ps
module rev_alu_top (
    input  [2:0]  SEL,
    input         CIN,

    input         A1,   B1,
    output        F1,   COUT1,  PARITY1,  V1,

    input  [3:0]  A4,   B4,
    output [3:0]  F4,   output COUT4,  PARITY4,  V4,

    input  [7:0]  A8,   B8,
    output [7:0]  F8,   output COUT8,  PARITY8,  V8,

    input  [15:0] A16,  B16,
    output [15:0] F16,  output COUT16, PARITY16, V16
);
    rev_alu #(.WIDTH(1))  alu1  (.A(A1),  .B(B1),  .SEL(SEL), .CIN(CIN),
        .F(F1),  .COUT(COUT1),  .PARITY(PARITY1),  .V(V1));
    rev_alu #(.WIDTH(4))  alu4  (.A(A4),  .B(B4),  .SEL(SEL), .CIN(CIN),
        .F(F4),  .COUT(COUT4),  .PARITY(PARITY4),  .V(V4));
    rev_alu #(.WIDTH(8))  alu8  (.A(A8),  .B(B8),  .SEL(SEL), .CIN(CIN),
        .F(F8),  .COUT(COUT8),  .PARITY(PARITY8),  .V(V8));
    rev_alu #(.WIDTH(16)) alu16 (.A(A16), .B(B16), .SEL(SEL), .CIN(CIN),
        .F(F16), .COUT(COUT16), .PARITY(PARITY16), .V(V16));
endmodule
