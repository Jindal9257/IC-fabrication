//============================================================
// tb_wave.v -- short directed testbench for waveform viewing
// Steps through all 12 operations (8 arithmetic + 4 logic) on
// rev_alu_top, then a few overflow / carry corner cases.
// Writes tb_wave.vcd (small, readable, unlike the full tb).
//============================================================
`timescale 1ns/1ps
module tb_wave;
    reg  [2:0]  SEL;  reg CIN;
    reg         A1, B1;   wire F1, COUT1, PARITY1, V1;
    reg  [3:0]  A4, B4;   wire [3:0]  F4;  wire COUT4,  PARITY4,  V4;
    reg  [7:0]  A8, B8;   wire [7:0]  F8;  wire COUT8,  PARITY8,  V8;
    reg  [15:0] A16, B16; wire [15:0] F16; wire COUT16, PARITY16, V16;
    reg  [127:0] op_name;   // ASCII label, show in GTKWave as ASCII

    rev_alu_top dut (
        .SEL(SEL), .CIN(CIN),
        .A1(A1), .B1(B1), .F1(F1), .COUT1(COUT1), .PARITY1(PARITY1), .V1(V1),
        .A4(A4), .B4(B4), .F4(F4), .COUT4(COUT4), .PARITY4(PARITY4), .V4(V4),
        .A8(A8), .B8(B8), .F8(F8), .COUT8(COUT8), .PARITY8(PARITY8), .V8(V8),
        .A16(A16), .B16(B16), .F16(F16), .COUT16(COUT16), .PARITY16(PARITY16), .V16(V16)
    );

    task step;
        input [15:0] a, b;
        input [2:0]  sel;
        input        cin;
        input [127:0] name;
        begin
            A1 = a[0]; B1 = b[0];
            A4 = a[3:0]; B4 = b[3:0];
            A8 = a[7:0]; B8 = b[7:0];
            A16 = a;   B16 = b;
            SEL = sel; CIN = cin; op_name = name;
            #20;
        end
    endtask

    initial begin
        $dumpfile("tb_wave.vcd");
        $dumpvars(0, tb_wave);
        // arithmetic: SEL = {0,S1,S0}, CIN
        step(16'h000B, 16'h0005, 3'b000, 0, "Transfer A");
        step(16'h000B, 16'h0005, 3'b000, 1, "Increment A");
        step(16'h000B, 16'h0005, 3'b001, 0, "A + B");
        step(16'h000B, 16'h0005, 3'b001, 1, "A + B + 1");
        step(16'h000B, 16'h0005, 3'b010, 0, "A + B'");
        step(16'h000B, 16'h0005, 3'b010, 1, "A - B");
        step(16'h000B, 16'h0005, 3'b011, 0, "Decrement A");
        step(16'h000B, 16'h0005, 3'b011, 1, "Transfer A (2)");
        // logic: SEL = {1,S1,S0}
        step(16'h000B, 16'h0005, 3'b100, 0, "OR");
        step(16'h000B, 16'h0005, 3'b101, 0, "XOR");
        step(16'h000B, 16'h0005, 3'b110, 0, "AND");
        step(16'h000B, 16'h0005, 3'b111, 0, "NOT A");
        // corner cases
        step(16'hFFFF, 16'h0001, 3'b001, 0, "carry out");
        step(16'h7FFF, 16'h0001, 3'b001, 0, "signed overflow");
        step(16'h0000, 16'h0001, 3'b010, 1, "0 - 1");
        step(16'h0000, 16'h0000, 3'b001, 0, "0 + 0");
        $finish;
    end
endmodule
