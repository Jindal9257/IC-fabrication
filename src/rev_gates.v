//============================================================
// rev_gates.v -- reversible gate library (behavioural models)
// Quantum cost (QC): NOT 1, Feynman 1, Peres 4, Fredkin 5, HNG 6
//============================================================
`timescale 1ns/1ps

module g_not (input a, output q);                 // 1x1, QC 1
    assign q = ~a;
endmodule

module g_fg (input a, b, output p, q);            // Feynman (CNOT), 2x2, QC 1
    assign p = a;
    assign q = a ^ b;
endmodule

module g_peres (input a, b, c, output p, q, r);   // Peres, 3x3, QC 4
    assign p = a;
    assign q = a ^ b;
    assign r = (a & b) ^ c;
endmodule

module g_fredkin (input a, b, c, output p, q, r); // Fredkin, 3x3, QC 5
    assign p = a;
    assign q = a ? c : b;
    assign r = a ? b : c;
endmodule

module g_hng (input a, b, c, d, output p, q, r, s); // HNG, 4x4, QC 6
    assign p = a;
    assign q = b;
    assign r = a ^ b ^ c;                          // sum  (with d = 0 ...)
    assign s = ((a ^ b) & c) ^ (a & b) ^ d;        // carry
endmodule
