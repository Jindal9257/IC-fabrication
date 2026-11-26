//============================================================
// rev_alu.v -- N-bit ALU implementing Table 1 of Gopal et al.
// (I4CT 2014): 8 arithmetic ops (S2=0) + 4 logic ops (S2=1)
//
// Arithmetic (S2=0): F = A + Y + CIN, with Y selected by {S1,S0}
//   00: Y = 0        -> CIN=0 Transfer A,  CIN=1 Increment A
//   01: Y = B        -> CIN=0 A+B,         CIN=1 A+B+1
//   10: Y = ~B       -> CIN=0 A+B',        CIN=1 A+B'+1 (A-B)
//   11: Y = all ones -> CIN=0 A-1,         CIN=1 Transfer A
// Logic (S2=1), {S1,S0}: 00 OR, 01 XOR, 10 AND, 11 NOT A
//
// NOTE: functionally equivalent to the paper's ALU, but written
// as ordinary RTL -- synthesis maps it to normal CMOS cells, not
// reversible gates. PARITY = even parity of F (placeholder; the
// old a^b^cin^sum^cout expression was just COUT).
//============================================================
`timescale 1ns/1ps

module ppfa (
    input  a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = ((a ^ b) & cin) | (a & b);
endmodule

module rev_alu #(
    parameter WIDTH = 4
)(
    input  [WIDTH-1:0] A,
    input  [WIDTH-1:0] B,
    input  [2:0]       SEL,     // {S2,S1,S0}
    input              CIN,
    output [WIDTH-1:0] F,
    output             COUT,
    output             PARITY,
    output             V
);
    wire s2 = SEL[2], s1 = SEL[1], s0 = SEL[0];

    wire [WIDTH:0]   carry;
    wire [WIDTH-1:0] sum_bus, y;
    reg  [WIDTH-1:0] logic_bus;

    // Second adder operand
    assign y = (~s1 & ~s0) ? {WIDTH{1'b0}} :
               (~s1 &  s0) ? B :
               ( s1 & ~s0) ? ~B : {WIDTH{1'b1}};

    assign carry[0] = CIN;

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : SLICE
            ppfa u_fa (.a(A[i]), .b(y[i]), .cin(carry[i]),
                       .sum(sum_bus[i]), .cout(carry[i+1]));
        end
    endgenerate

    always @(*) begin
        case ({s1, s0})
            2'b00:   logic_bus = A | B;
            2'b01:   logic_bus = A ^ B;
            2'b10:   logic_bus = A & B;
            default: logic_bus = ~A;
        endcase
    end

    assign F      = s2 ? logic_bus : sum_bus;
    assign COUT   = s2 ? 1'b0 : carry[WIDTH];
    assign V      = s2 ? 1'b0 : (carry[WIDTH] ^ carry[WIDTH-1]);
    assign PARITY = ^F;
endmodule
