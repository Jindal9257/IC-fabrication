//============================================================
// tb_rev_alu_gates.v -- exhaustive self-checking TB for the
// reversible-gate ALU (rev_alu_gates.v).
// Checks F, COUT against the function table for all widths.
//
// KEY FIX (v2): the reference model must perform the addition
// at the SAME width as the ALU under test. Computing a 16-bit
// sum and extracting bit w gives the wrong carry for widths
// smaller than 16, because the carry has already propagated
// past bit w in the 16-bit chain.
//============================================================
`timescale 1ns/1ps
module tb_rev_alu_gates;

    reg  [2:0] SEL;  reg CIN;
    reg  [0:0]  A1, B1;   wire [0:0]  F1;  wire COUT1;
    reg  [3:0]  A4, B4;   wire [3:0]  F4;  wire COUT4;
    reg  [7:0]  A8, B8;   wire [7:0]  F8;  wire COUT8;
    reg  [15:0] A16,B16;  wire [15:0] F16; wire COUT16;

    rev_alu_gates #(.WIDTH(1))  d1  (.A(A1),  .B(B1),  .SEL(SEL), .CIN(CIN), .F(F1),  .COUT(COUT1));
    rev_alu_gates #(.WIDTH(4))  d4  (.A(A4),  .B(B4),  .SEL(SEL), .CIN(CIN), .F(F4),  .COUT(COUT4));
    rev_alu_gates #(.WIDTH(8))  d8  (.A(A8),  .B(B8),  .SEL(SEL), .CIN(CIN), .F(F8),  .COUT(COUT8));
    rev_alu_gates #(.WIDTH(16)) d16 (.A(A16), .B(B16), .SEL(SEL), .CIN(CIN), .F(F16), .COUT(COUT16));

    integer errors = 0, tests = 0;

    // ---- reference model ----
    reg [15:0] ref_y;
    reg [16:0] ref_full;
    reg [16:0] ref_out;

    // compute reference at width w (mask operands FIRST)
    task compute_ref;
        input  integer w;
        input  [15:0] a_in;
        input  [15:0] b_in;
        input  [2:0]  sel;
        input         cin;
        reg    [15:0] a, b, mask;
        begin
            mask = (16'd1 << w) - 16'd1;
            a = a_in & mask;
            b = b_in & mask;

            if (sel[2]) begin
                case (sel[1:0])
                    2'd0: ref_out = {1'b0, a | b};
                    2'd1: ref_out = {1'b0, a ^ b};
                    2'd2: ref_out = {1'b0, a & b};
                    default: ref_out = {1'b0, ~a & mask};
                endcase
            end else begin
                case (sel[1:0])
                    2'd0: ref_y = 16'd0;
                    2'd1: ref_y = b;
                    2'd2: ref_y = ~b & mask;
                    default: ref_y = mask;      // "all ones" at width w
                endcase
                ref_full = {1'b0, a} + {1'b0, ref_y} + {16'd0, cin};
                ref_out = ref_full;
            end
        end
    endtask

    task chk;
        input integer  w;
        input [15:0]   a, b;
        input [2:0]    sel;
        input          cin;
        input [15:0]   f;
        input          c;
        reg   [15:0]   mask;
        begin
            mask = (16'd1 << w) - 16'd1;
            compute_ref(w, a, b, sel, cin);
            tests = tests + 1;

            if ((f & mask) !== (ref_out[15:0] & mask)) begin
                errors = errors + 1;
                if (errors < 20)
                    $display("FAIL F w=%0d A=%h B=%h SEL=%b CIN=%b : %h exp %h",
                             w, a & mask, b & mask, sel, cin,
                             f & mask, ref_out[15:0] & mask);
            end
            if (c !== ref_out[w]) begin
                errors = errors + 1;
                if (errors < 20)
                    $display("FAIL C w=%0d A=%h B=%h SEL=%b CIN=%b : %b exp %b",
                             w, a & mask, b & mask, sel, cin, c, ref_out[w]);
            end
        end
    endtask

    task drive;
        input [15:0] a, b;
        input [2:0]  sel;
        input        cin;
        begin
            A1 = a[0];   B1 = b[0];
            A4 = a[3:0]; B4 = b[3:0];
            A8 = a[7:0]; B8 = b[7:0];
            A16 = a;     B16 = b;
            SEL = sel;   CIN = cin;
            #1;
            chk(1,  a, b, sel, cin, F1,  COUT1);
            chk(4,  a, b, sel, cin, F4,  COUT4);
            chk(8,  a, b, sel, cin, F8,  COUT8);
            chk(16, a, b, sel, cin, F16, COUT16);
        end
    endtask

    integer i, j, k, m;
    initial begin
        $dumpfile("tb_rev_alu_gates.vcd");
        $dumpvars(0, tb_rev_alu_gates);

        // 1) exhaustive over 4-bit A,B
        for (i = 0; i < 16; i = i + 1)
            for (j = 0; j < 16; j = j + 1)
                for (k = 0; k < 8; k = k + 1)
                    for (m = 0; m < 2; m = m + 1)
                        drive(i[15:0], j[15:0], k[2:0], m[0]);

        // 2) corner cases
        for (i = 0; i < 10; i = i + 1)
            for (j = 0; j < 10; j = j + 1)
                for (k = 0; k < 8; k = k + 1)
                    for (m = 0; m < 2; m = m + 1)
                        drive($random, $random, k[2:0], m[0]);

        // 3) random
        for (i = 0; i < 50000; i = i + 1)
            drive($random, $random, $random, $random);

        $display("-----------------------------------------------------");
        $display(" TOTAL CHECKS : %0d", tests);
        $display(" ERRORS       : %0d", errors);
        if (errors == 0) $display(" RESULT       : *** PASS ***");
        else             $display(" RESULT       : *** FAIL ***");
        $finish;
    end
endmodule
