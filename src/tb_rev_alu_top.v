//============================================================
// tb_rev_alu_top.v -- self-checking testbench for rev_alu_top
// Checks the 1/4/8/16-bit ALUs against Table 1 of the paper:
//  * F      vs. table-level behaviour (transfer, inc, add, ...)
//  * COUT/V vs. an independent wide-adder model
//  * PARITY vs. ^F
// Run: iverilog -g2012 -o sim src/rev_alu.v src/rev_alu_top.v \
//        src/tb_rev_alu_top.v && vvp sim
//============================================================
`timescale 1ns/1ps

module tb_rev_alu_top;
    reg  [2:0]  SEL;
    reg         CIN;
    reg         A1, B1;   wire F1, COUT1, PARITY1, V1;
    reg  [3:0]  A4, B4;   wire [3:0]  F4;  wire COUT4,  PARITY4,  V4;
    reg  [7:0]  A8, B8;   wire [7:0]  F8;  wire COUT8,  PARITY8,  V8;
    reg  [15:0] A16, B16; wire [15:0] F16; wire COUT16, PARITY16, V16;

    rev_alu_top dut (
        .SEL(SEL), .CIN(CIN),
        .A1(A1), .B1(B1), .F1(F1), .COUT1(COUT1), .PARITY1(PARITY1), .V1(V1),
        .A4(A4), .B4(B4), .F4(F4), .COUT4(COUT4), .PARITY4(PARITY4), .V4(V4),
        .A8(A8), .B8(B8), .F8(F8), .COUT8(COUT8), .PARITY8(PARITY8), .V8(V8),
        .A16(A16), .B16(B16), .F16(F16), .COUT16(COUT16), .PARITY16(PARITY16), .V16(V16)
    );

    integer errors = 0, tests = 0;

    // ---- check one width ----
    task check_w;
        input integer     w;
        input [15:0]      a, b;
        input [2:0]       sel;
        input             cin;
        input [15:0]      f_dut;
        input             cout_dut, par_dut, v_dut;
        reg [15:0] mask, am, bm, y, ef, tf;
        reg [16:0] full;
        reg        ec, ev;
        begin
            mask = (17'd1 << w) - 17'd1;
            am = a & mask;
            bm = b & mask;
            tests = tests + 1;

            if (sel[2] == 1'b0) begin
                // wide-adder model
                case (sel[1:0])
                    2'd0: y = 16'd0;
                    2'd1: y = bm;
                    2'd2: y = ~bm & mask;
                    2'd3: y = mask;
                endcase
                full = {1'b0, am} + {1'b0, y} + {16'd0, cin};
                ef   = full[15:0] & mask;
                ec   = full[w];
                ev   = (am[w-1] == y[w-1]) && (ef[w-1] != am[w-1]);
                // table-level behaviour (index = {S1,S0,Cin})
                case ({sel[1:0], cin})
                    3'd0: tf = am;                    // Transfer A
                    3'd1: tf = am + 16'd1;            // Increment
                    3'd2: tf = am + bm;               // Addition
                    3'd3: tf = am + bm + 16'd1;       // Add with carry
                    3'd4: tf = am + ~bm;              // A + B'
                    3'd5: tf = am + ~bm + 16'd1;      // Subtraction
                    3'd6: tf = am - 16'd1;            // Decrement
                    3'd7: tf = am;                    // Transfer A
                endcase
                tf = tf & mask;
                if (tf !== ef) begin
                    errors = errors + 1;
                    $display("TB-MODEL mismatch w=%0d sel=%b cin=%b", w, sel, cin);
                end
            end else begin
                case (sel[1:0])
                    2'd0: ef = am | bm;
                    2'd1: ef = am ^ bm;
                    2'd2: ef = am & bm;
                    2'd3: ef = ~am & mask;
                endcase
                tf = ef; ec = 1'b0; ev = 1'b0;
            end

            if ((f_dut & mask) !== tf) begin
                errors = errors + 1;
                if (errors < 25)
                    $display("FAIL F    w=%0d A=%h B=%h SEL=%b CIN=%b : F=%h exp=%h",
                             w, am, bm, sel, cin, f_dut & mask, tf);
            end
            if (cout_dut !== ec) begin
                errors = errors + 1;
                if (errors < 25)
                    $display("FAIL COUT w=%0d A=%h B=%h SEL=%b CIN=%b : %b exp=%b",
                             w, am, bm, sel, cin, cout_dut, ec);
            end
            if (v_dut !== ev) begin
                errors = errors + 1;
                if (errors < 25)
                    $display("FAIL V    w=%0d A=%h B=%h SEL=%b CIN=%b : %b exp=%b",
                             w, am, bm, sel, cin, v_dut, ev);
            end
            if (par_dut !== ^(f_dut & mask)) begin
                errors = errors + 1;
                if (errors < 25)
                    $display("FAIL PARITY w=%0d A=%h B=%h SEL=%b CIN=%b : %b",
                             w, am, bm, sel, cin, par_dut);
            end
        end
    endtask

    // ---- drive all four ALUs and check them ----
    task apply_all;
        input [15:0] a, b;
        input [2:0]  sel;
        input        cin;
        begin
            A1 = a[0];  B1 = b[0];
            A4 = a[3:0]; B4 = b[3:0];
            A8 = a[7:0]; B8 = b[7:0];
            A16 = a;     B16 = b;
            SEL = sel;   CIN = cin;
            #1;
            check_w(1,  a, b, sel, cin, {15'd0, F1},  COUT1,  PARITY1,  V1);
            check_w(4,  a, b, sel, cin, {12'd0, F4},  COUT4,  PARITY4,  V4);
            check_w(8,  a, b, sel, cin, {8'd0,  F8},  COUT8,  PARITY8,  V8);
            check_w(16, a, b, sel, cin, F16,          COUT16, PARITY16, V16);
        end
    endtask

    reg [15:0] corner [0:9];
    integer i, j, k, m;

    initial begin
        $dumpfile("tb_rev_alu_top.vcd");
        $dumpvars(0, tb_rev_alu_top);

        corner[0] = 16'h0000; corner[1] = 16'h0001; corner[2] = 16'h007F;
        corner[3] = 16'h0080; corner[4] = 16'h00FF; corner[5] = 16'h7FFF;
        corner[6] = 16'h8000; corner[7] = 16'h8001; corner[8] = 16'hFFFF;
        corner[9] = 16'h5A5A;

        // 1) exhaustive over 4-bit A,B (covers 1-bit and 4-bit fully)
        for (i = 0; i < 16; i = i + 1)
            for (j = 0; j < 16; j = j + 1)
                for (k = 0; k < 8; k = k + 1)
                    for (m = 0; m < 2; m = m + 1)
                        apply_all(i[15:0], j[15:0], k[2:0], m[0]);

        // 2) corner cases for all widths
        for (i = 0; i < 10; i = i + 1)
            for (j = 0; j < 10; j = j + 1)
                for (k = 0; k < 8; k = k + 1)
                    for (m = 0; m < 2; m = m + 1)
                        apply_all(corner[i], corner[j], k[2:0], m[0]);

        // 3) random
        for (i = 0; i < 50000; i = i + 1)
            apply_all($random, $random, $random, $random);

        $display("-----------------------------------------------------");
        $display(" TOTAL CHECKS : %0d", tests);
        $display(" ERRORS       : %0d", errors);
        if (errors == 0) $display(" RESULT       : *** PASS ***");
        else             $display(" RESULT       : *** FAIL ***");
        $finish;
    end
endmodule
