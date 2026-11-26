`timescale 1ns/1ps
module rev_alu_w1 (input [0:0] A, B, input [2:0] SEL, input CIN,
                   output [0:0] F, output COUT, PARITY, V);
    rev_alu #(.WIDTH(1))  u (.A(A), .B(B), .SEL(SEL), .CIN(CIN),
        .F(F), .COUT(COUT), .PARITY(PARITY), .V(V));
endmodule

module rev_alu_w4 (input [3:0] A, B, input [2:0] SEL, input CIN,
                   output [3:0] F, output COUT, PARITY, V);
    rev_alu #(.WIDTH(4))  u (.A(A), .B(B), .SEL(SEL), .CIN(CIN),
        .F(F), .COUT(COUT), .PARITY(PARITY), .V(V));
endmodule

module rev_alu_w8 (input [7:0] A, B, input [2:0] SEL, input CIN,
                   output [7:0] F, output COUT, PARITY, V);
    rev_alu #(.WIDTH(8))  u (.A(A), .B(B), .SEL(SEL), .CIN(CIN),
        .F(F), .COUT(COUT), .PARITY(PARITY), .V(V));
endmodule

module rev_alu_w16 (input [15:0] A, B, input [2:0] SEL, input CIN,
                    output [15:0] F, output COUT, PARITY, V);
    rev_alu #(.WIDTH(16)) u (.A(A), .B(B), .SEL(SEL), .CIN(CIN),
        .F(F), .COUT(COUT), .PARITY(PARITY), .V(V));
endmodule
