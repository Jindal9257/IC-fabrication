//============================================================
// tb_rev_gates.v -- (1) every gate is a bijection (reversible)
//                   (2) rev_alu_gates == rev_alu (F and COUT)
//============================================================
`timescale 1ns/1ps
module tb_rev_gates;
    integer errors = 0, tests = 0;

    // ---------- (1) reversibility of each gate ----------
    reg  [3:0] gi;
    wire fg_p, fg_q, pe_p, pe_q, pe_r, fr_p, fr_q, fr_r, hn_p, hn_q, hn_r, hn_s, nt_q;
    g_fg     d_fg (.a(gi[0]), .b(gi[1]), .p(fg_p), .q(fg_q));
    g_peres  d_pe (.a(gi[0]), .b(gi[1]), .c(gi[2]), .p(pe_p), .q(pe_q), .r(pe_r));
    g_fredkin d_fr(.a(gi[0]), .b(gi[1]), .c(gi[2]), .p(fr_p), .q(fr_q), .r(fr_r));
    g_hng    d_hn (.a(gi[0]), .b(gi[1]), .c(gi[2]), .d(gi[3]), .p(hn_p), .q(hn_q), .r(hn_r), .s(hn_s));
    g_not    d_nt (.a(gi[0]), .q(nt_q));

    reg seen_fg [0:3];  reg seen_pe [0:7];  reg seen_fr [0:7];
    reg seen_hn [0:15]; reg seen_nt [0:1];
    integer k, cnt_fg, cnt_pe, cnt_fr, cnt_hn, cnt_nt;

    // ---------- (2) equivalence ----------
    localparam W = 4;
    reg  [W-1:0] A, B;  reg [2:0] SEL;  reg CIN;
    wire [W-1:0] F_r, F_c;  wire COUT_r, COUT_c, PAR_c, V_c;
    rev_alu_gates #(.WIDTH(W)) dr (.A(A), .B(B), .SEL(SEL), .CIN(CIN), .F(F_r), .COUT(COUT_r));
    rev_alu       #(.WIDTH(W)) dc (.A(A), .B(B), .SEL(SEL), .CIN(CIN),
                                   .F(F_c), .COUT(COUT_c), .PARITY(PAR_c), .V(V_c));

    localparam W2 = 16;
    reg  [W2-1:0] A2, B2;
    wire [W2-1:0] F2_r, F2_c;  wire C2_r, C2_c, P2, V2;
    rev_alu_gates #(.WIDTH(W2)) dr2 (.A(A2), .B(B2), .SEL(SEL), .CIN(CIN), .F(F2_r), .COUT(C2_r));
    rev_alu       #(.WIDTH(W2)) dc2 (.A(A2), .B(B2), .SEL(SEL), .CIN(CIN),
                                     .F(F2_c), .COUT(C2_c), .PARITY(P2), .V(V2));

    integer i, j, s, c;
    initial begin
        for (k = 0; k < 16; k = k + 1) begin
            seen_fg[k%4]=0; seen_pe[k%8]=0; seen_fr[k%8]=0; seen_hn[k]=0; seen_nt[k%2]=0;
        end
        for (k = 0; k < 16; k = k + 1) begin
            gi = k; #1;
            if (k < 2)  seen_nt[{nt_q}] = 1;
            if (k < 4)  seen_fg[{fg_p, fg_q}] = 1;
            if (k < 8)  begin seen_pe[{pe_p,pe_q,pe_r}] = 1; seen_fr[{fr_p,fr_q,fr_r}] = 1; end
            seen_hn[{hn_p,hn_q,hn_r,hn_s}] = 1;
        end
        cnt_fg=0; cnt_pe=0; cnt_fr=0; cnt_hn=0; cnt_nt=0;
        for (k = 0; k < 2;  k = k + 1) cnt_nt = cnt_nt + seen_nt[k];
        for (k = 0; k < 4;  k = k + 1) cnt_fg = cnt_fg + seen_fg[k];
        for (k = 0; k < 8;  k = k + 1) begin cnt_pe = cnt_pe + seen_pe[k]; cnt_fr = cnt_fr + seen_fr[k]; end
        for (k = 0; k < 16; k = k + 1) cnt_hn = cnt_hn + seen_hn[k];
        $display("distinct outputs  NOT=%0d/2 FG=%0d/4 Peres=%0d/8 Fredkin=%0d/8 HNG=%0d/16",
                 cnt_nt, cnt_fg, cnt_pe, cnt_fr, cnt_hn);
        if (cnt_nt!=2 || cnt_fg!=4 || cnt_pe!=8 || cnt_fr!=8 || cnt_hn!=16) begin
            errors = errors + 1; $display("FAIL: a gate is not reversible");
        end

        // exhaustive 4-bit equivalence
        for (i = 0; i < 16; i = i + 1)
          for (j = 0; j < 16; j = j + 1)
            for (s = 0; s < 8; s = s + 1)
              for (c = 0; c < 2; c = c + 1) begin
                A = i; B = j; SEL = s; CIN = c; A2 = i; B2 = j; #1;
                tests = tests + 1;
                if (F_r !== F_c || COUT_r !== COUT_c) begin
                    errors = errors + 1;
                    if (errors < 20) $display("FAIL w4 A=%h B=%h SEL=%b CIN=%b F=%h/%h COUT=%b/%b",
                                              A, B, SEL, CIN, F_r, F_c, COUT_r, COUT_c);
                end
              end
        // random 16-bit equivalence
        for (i = 0; i < 100000; i = i + 1) begin
            A2 = $random; B2 = $random; SEL = $random; CIN = $random; #1;
            tests = tests + 1;
            if (F2_r !== F2_c || C2_r !== C2_c) begin
                errors = errors + 1;
                if (errors < 20) $display("FAIL w16 A=%h B=%h SEL=%b CIN=%b F=%h/%h COUT=%b/%b",
                                          A2, B2, SEL, CIN, F2_r, F2_c, C2_r, C2_c);
            end
        end
        $display("CHECKS : %0d", tests);
        $display("ERRORS : %0d", errors);
        if (errors == 0) $display("RESULT : *** PASS ***"); else $display("RESULT : *** FAIL ***");
        $finish;
    end
endmodule
