//============================================================
// rev_alu_gates.v -- structural ALU built ONLY from reversible
// gates (rev_gates.v), same function table as rev_alu.v:
//   S2=0: F = A + Y + CIN, Y by {S1,S0}: 00:0  01:B  10:~B  11:all ones
//   S2=1: {S1,S0}: 00 OR, 01 XOR, 10 AND, 11 NOT A
// Outputs: F, COUT (0 for logic ops). No V / PARITY outputs.
// Own gate-level mapping (NOT a copy of the paper's Fig. 6 control
// unit, which cannot be reproduced exactly from the PDF).
// Per 1-bit slice: 16 gates, 8 constant inputs, 12 garbage outputs,
// quantum cost 50. Signal fan-out is not costed.
//============================================================
`timescale 1ns/1ps

module rev_alu_slice (
    input  a, b, cin, s2, s1, s0,
    output f, cout
);
    wire a_arith, a_log, b_arith, b_log;
    wire s1_x, t, s1_m, u, w, g_u, g_ut, y;
    wire g_a, g_y, sum, cout_raw;
    wire a_l, x, n, x_k, x_c, n_k, or_w, nota;
    wire s0_a, s0_b, s0_a2, s0_b2, m01, m23, lg;
    wire g_m1, g_m2, s1_o, g_m3, s2_a, g_f, s2_b, g_k;

    // copies (fan-out) via Feynman with constant 0
    g_fg cpa (.a(a), .b(1'b0), .p(a_arith), .q(a_log));
    g_fg cpb (.a(b), .b(1'b0), .p(b_arith), .q(b_log));
    g_fg cps0(.a(s0), .b(1'b0), .p(s0_a), .q(s0_b));

    // second adder operand  Y = (s1&s0) ^ ((s1^s0) & (b^s1))
    g_fg   c1 (.a(s1),   .b(b_arith), .p(s1_x), .q(t));               // t = b^s1
    g_peres c2(.a(s1_x), .b(s0_b), .c(1'b0), .p(s1_m), .q(u), .r(w)); // u=s1^s0, w=s1&s0
    g_peres c3(.a(u),    .b(t),    .c(w),    .p(g_u), .q(g_ut), .r(y));

    // reversible full adder: sum = a^y^cin, carry = maj
    g_hng add (.a(a_arith), .b(y), .c(cin), .d(1'b0),
               .p(g_a), .q(g_y), .r(sum), .s(cout_raw));

    // logic operations
    g_peres l1(.a(a_log), .b(b_log), .c(1'b0), .p(a_l), .q(x), .r(n)); // x=a^b, n=a&b
    g_fg    l2(.a(x), .b(1'b0), .p(x_k), .q(x_c));
    g_fg    l3(.a(n), .b(x_c),  .p(n_k), .q(or_w));                    // or = (a&b)^(a^b)
    g_not   l4(.a(a_l), .q(nota));

    // 4:1 logic select by {s1,s0} (Fredkin multiplexers)
    g_fredkin m1(.a(s0_a),  .b(or_w), .c(x_k),  .p(s0_a2), .q(m01), .r(g_m1));
    g_fredkin m2(.a(s0_a2), .b(n_k),  .c(nota), .p(s0_b2), .q(m23), .r(g_m2));
    g_fredkin m3(.a(s1_m),  .b(m01),  .c(m23),  .p(s1_o),  .q(lg),  .r(g_m3));

    // arithmetic / logic select by s2, and carry masking for logic ops
    g_fredkin mf(.a(s2),   .b(sum),      .c(lg),   .p(s2_a), .q(f),    .r(g_f));
    g_fredkin mk(.a(s2_a), .b(cout_raw), .c(1'b0), .p(s2_b), .q(cout), .r(g_k));
endmodule

module rev_alu_gates #(
    parameter WIDTH = 4
)(
    input  [WIDTH-1:0] A, B,
    input  [2:0]       SEL,
    input              CIN,
    output [WIDTH-1:0] F,
    output             COUT
);
    wire [WIDTH:0] carry;
    assign carry[0] = CIN;
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : S
            rev_alu_slice u (.a(A[i]), .b(B[i]), .cin(carry[i]),
                             .s2(SEL[2]), .s1(SEL[1]), .s0(SEL[0]),
                             .f(F[i]), .cout(carry[i+1]));
        end
    endgenerate
    assign COUT = carry[WIDTH];
endmodule
