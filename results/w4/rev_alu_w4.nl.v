module rev_alu_w4 (CIN,
    COUT,
    PARITY,
    V,
    A,
    B,
    F,
    SEL);
 input CIN;
 output COUT;
 output PARITY;
 output V;
 input [3:0] A;
 input [3:0] B;
 output [3:0] F;
 input [2:0] SEL;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net10;
 wire net11;
 wire net12;
 wire net19;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;

 sky130_fd_sc_hd__fill_1 FILLER_0_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_99 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_107 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_119 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_25 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_7 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_100 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_121 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_129 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_24 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_69 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_93 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_69 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_93 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_16_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_69 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_93 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_69 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_69 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_97 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_69 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_81 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_93 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_104 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_87 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_92 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_102 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_114 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_126 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_138 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_90 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_141 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_28 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_52 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_91 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_11 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_119 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_141 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_33 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_45 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_89 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_96 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_110 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_47 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_98 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_68 ();
 sky130_fd_sc_hd__inv_1 _37_ (.A(net11),
    .Y(_00_));
 sky130_fd_sc_hd__inv_1 _38_ (.A(net2),
    .Y(_01_));
 sky130_fd_sc_hd__mux2i_1 _39_ (.A0(net11),
    .A1(net10),
    .S(net6),
    .Y(_10_));
 sky130_fd_sc_hd__or2_0 _40_ (.A(_01_),
    .B(_10_),
    .X(_11_));
 sky130_fd_sc_hd__xnor2_1 _41_ (.A(net2),
    .B(_10_),
    .Y(_12_));
 sky130_fd_sc_hd__mux2_1 _42_ (.A0(net11),
    .A1(net10),
    .S(net5),
    .X(_13_));
 sky130_fd_sc_hd__nand2_1 _43_ (.A(net1),
    .B(_13_),
    .Y(_14_));
 sky130_fd_sc_hd__xnor2_1 _44_ (.A(net1),
    .B(_13_),
    .Y(_15_));
 sky130_fd_sc_hd__maj3_1 _45_ (.A(net9),
    .B(net1),
    .C(_13_),
    .X(_16_));
 sky130_fd_sc_hd__a21boi_0 _46_ (.A1(_12_),
    .A2(_16_),
    .B1_N(_11_),
    .Y(_17_));
 sky130_fd_sc_hd__maj3_1 _47_ (.A(_02_),
    .B(_08_),
    .C(_17_),
    .X(_18_));
 sky130_fd_sc_hd__a21oi_1 _48_ (.A1(_03_),
    .A2(_04_),
    .B1(net4),
    .Y(_19_));
 sky130_fd_sc_hd__inv_1 _49_ (.A(net3),
    .Y(_02_));
 sky130_fd_sc_hd__inv_1 _50_ (.A(_19_),
    .Y(_20_));
 sky130_fd_sc_hd__nand2_1 _51_ (.A(_05_),
    .B(_20_),
    .Y(_21_));
 sky130_fd_sc_hd__nor2_1 _52_ (.A(_18_),
    .B(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__a21o_1 _53_ (.A1(_18_),
    .A2(_21_),
    .B1(net12),
    .X(_23_));
 sky130_fd_sc_hd__o211ai_1 _54_ (.A1(_06_),
    .A2(_07_),
    .B1(net12),
    .C1(_05_),
    .Y(_24_));
 sky130_fd_sc_hd__o21ai_0 _55_ (.A1(_22_),
    .A2(_23_),
    .B1(_24_),
    .Y(net17));
 sky130_fd_sc_hd__a211o_1 _56_ (.A1(_00_),
    .A2(net7),
    .B1(_06_),
    .C1(net3),
    .X(_25_));
 sky130_fd_sc_hd__o211ai_1 _57_ (.A1(_02_),
    .A2(_08_),
    .B1(_25_),
    .C1(net12),
    .Y(_26_));
 sky130_fd_sc_hd__xnor2_1 _58_ (.A(_09_),
    .B(_17_),
    .Y(_27_));
 sky130_fd_sc_hd__o21ai_0 _59_ (.A1(net12),
    .A2(_27_),
    .B1(_26_),
    .Y(net16));
 sky130_fd_sc_hd__or2_0 _60_ (.A(net8),
    .B(net11),
    .X(_03_));
 sky130_fd_sc_hd__xnor2_1 _61_ (.A(_12_),
    .B(_16_),
    .Y(_28_));
 sky130_fd_sc_hd__a21o_1 _62_ (.A1(_00_),
    .A2(net6),
    .B1(net2),
    .X(_29_));
 sky130_fd_sc_hd__o211ai_1 _63_ (.A1(_06_),
    .A2(_29_),
    .B1(_11_),
    .C1(net12),
    .Y(_30_));
 sky130_fd_sc_hd__o21ai_0 _64_ (.A1(net12),
    .A2(_28_),
    .B1(_30_),
    .Y(net15));
 sky130_fd_sc_hd__xor2_1 _65_ (.A(net9),
    .B(_15_),
    .X(_31_));
 sky130_fd_sc_hd__a211oi_1 _66_ (.A1(_00_),
    .A2(net5),
    .B1(_06_),
    .C1(net1),
    .Y(_32_));
 sky130_fd_sc_hd__nand2_1 _67_ (.A(net12),
    .B(_14_),
    .Y(_33_));
 sky130_fd_sc_hd__o22ai_1 _68_ (.A1(net12),
    .A2(_31_),
    .B1(_32_),
    .B2(_33_),
    .Y(net14));
 sky130_fd_sc_hd__xor2_1 _69_ (.A(net15),
    .B(net14),
    .X(_34_));
 sky130_fd_sc_hd__xnor2_1 _70_ (.A(net16),
    .B(_34_),
    .Y(_35_));
 sky130_fd_sc_hd__nand2b_1 _71_ (.A_N(net10),
    .B(net8),
    .Y(_04_));
 sky130_fd_sc_hd__xnor2_1 _72_ (.A(net17),
    .B(_35_),
    .Y(net18));
 sky130_fd_sc_hd__a21oi_1 _73_ (.A1(_05_),
    .A2(_18_),
    .B1(net12),
    .Y(_36_));
 sky130_fd_sc_hd__o21a_1 _74_ (.A1(_18_),
    .A2(_19_),
    .B1(_36_),
    .X(net19));
 sky130_fd_sc_hd__and2_0 _75_ (.A(_20_),
    .B(_36_),
    .X(net13));
 sky130_fd_sc_hd__nand3_1 _76_ (.A(net4),
    .B(_03_),
    .C(_04_),
    .Y(_05_));
 sky130_fd_sc_hd__and2_0 _77_ (.A(net10),
    .B(net11),
    .X(_06_));
 sky130_fd_sc_hd__a21o_1 _78_ (.A1(net8),
    .A2(_00_),
    .B1(net4),
    .X(_07_));
 sky130_fd_sc_hd__mux2i_1 _79_ (.A0(net11),
    .A1(net10),
    .S(net7),
    .Y(_08_));
 sky130_fd_sc_hd__xnor2_1 _80_ (.A(_02_),
    .B(_08_),
    .Y(_09_));
 sky130_fd_sc_hd__buf_2 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_2 input10 (.A(SEL[0]),
    .X(net10));
 sky130_fd_sc_hd__buf_2 input11 (.A(SEL[1]),
    .X(net11));
 sky130_fd_sc_hd__buf_2 input12 (.A(SEL[2]),
    .X(net12));
 sky130_fd_sc_hd__buf_2 input2 (.A(A[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_2 input3 (.A(A[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(A[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(B[0]),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(B[1]),
    .X(net6));
 sky130_fd_sc_hd__buf_2 input7 (.A(B[2]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 input8 (.A(B[3]),
    .X(net8));
 sky130_fd_sc_hd__buf_2 input9 (.A(CIN),
    .X(net9));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(COUT));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(F[0]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(F[1]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(F[2]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(F[3]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(PARITY));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(V));
endmodule
