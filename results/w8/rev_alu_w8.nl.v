module rev_alu_w8 (CIN,
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
 input [7:0] A;
 input [7:0] B;
 output [7:0] F;
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
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net18;
 wire net19;
 wire net20;
 wire net31;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;

 sky130_fd_sc_hd__decap_8 FILLER_0_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_109 ();
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
 sky130_fd_sc_hd__decap_6 FILLER_0_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_75 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_89 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_118 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_41 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_53 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_65 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_7 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_21 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_33 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_52 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_87 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_95 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_103 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_12_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_61 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_7 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_110 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_137 ();
 sky130_fd_sc_hd__decap_12 FILLER_13_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_85 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_106 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_118 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_14_41 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_61 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_137 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_26 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_15_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_50 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_57 ();
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
 sky130_fd_sc_hd__decap_8 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_65 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_87 ();
 sky130_fd_sc_hd__decap_12 FILLER_17_99 ();
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
 sky130_fd_sc_hd__decap_4 FILLER_19_107 ();
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
 sky130_fd_sc_hd__decap_8 FILLER_19_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_65 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_71 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_95 ();
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
 sky130_fd_sc_hd__decap_8 FILLER_20_101 ();
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
 sky130_fd_sc_hd__decap_8 FILLER_20_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_83 ();
 sky130_fd_sc_hd__decap_12 FILLER_20_89 ();
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
 sky130_fd_sc_hd__decap_12 FILLER_5_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_11 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_31 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_76 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_88 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_145 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_44 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_111 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_118 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_100 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_108 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_120 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_132 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_29 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_44 ();
 sky130_fd_sc_hd__decap_12 FILLER_8_56 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_68 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_7 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_92 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_11 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_113 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_145 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_55 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_89 ();
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
 sky130_fd_sc_hd__inv_1 _070_ (.A(net19),
    .Y(_009_));
 sky130_fd_sc_hd__mux2i_1 _071_ (.A0(net19),
    .A1(net18),
    .S(net16),
    .Y(_010_));
 sky130_fd_sc_hd__nand2b_1 _072_ (.A_N(_018_),
    .B(net6),
    .Y(_019_));
 sky130_fd_sc_hd__inv_1 _073_ (.A(_019_),
    .Y(_020_));
 sky130_fd_sc_hd__xor2_1 _074_ (.A(net6),
    .B(_018_),
    .X(_021_));
 sky130_fd_sc_hd__mux2i_1 _075_ (.A0(net19),
    .A1(net18),
    .S(net13),
    .Y(_022_));
 sky130_fd_sc_hd__nand2b_1 _076_ (.A_N(_022_),
    .B(net5),
    .Y(_023_));
 sky130_fd_sc_hd__xor2_1 _077_ (.A(net5),
    .B(_022_),
    .X(_024_));
 sky130_fd_sc_hd__mux2i_1 _078_ (.A0(net19),
    .A1(net18),
    .S(net12),
    .Y(_025_));
 sky130_fd_sc_hd__nand2b_1 _079_ (.A_N(_025_),
    .B(net4),
    .Y(_026_));
 sky130_fd_sc_hd__xnor2_1 _080_ (.A(net4),
    .B(_025_),
    .Y(_027_));
 sky130_fd_sc_hd__inv_1 _081_ (.A(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nor2b_1 _082_ (.A(_010_),
    .B_N(net8),
    .Y(_011_));
 sky130_fd_sc_hd__mux2i_1 _083_ (.A0(net19),
    .A1(net18),
    .S(net11),
    .Y(_029_));
 sky130_fd_sc_hd__nand2b_1 _084_ (.A_N(_029_),
    .B(net3),
    .Y(_030_));
 sky130_fd_sc_hd__xnor2_1 _085_ (.A(net3),
    .B(_029_),
    .Y(_031_));
 sky130_fd_sc_hd__mux2i_1 _086_ (.A0(net19),
    .A1(net18),
    .S(net10),
    .Y(_032_));
 sky130_fd_sc_hd__nor2b_1 _087_ (.A(_032_),
    .B_N(net2),
    .Y(_033_));
 sky130_fd_sc_hd__xnor2_1 _088_ (.A(net2),
    .B(_032_),
    .Y(_034_));
 sky130_fd_sc_hd__mux2_1 _089_ (.A0(net19),
    .A1(net18),
    .S(net9),
    .X(_035_));
 sky130_fd_sc_hd__and2_0 _090_ (.A(net1),
    .B(_035_),
    .X(_036_));
 sky130_fd_sc_hd__nor2_1 _091_ (.A(net1),
    .B(_035_),
    .Y(_037_));
 sky130_fd_sc_hd__nor2_1 _092_ (.A(_036_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__nand2b_1 _093_ (.A_N(_010_),
    .B(net8),
    .Y(_012_));
 sky130_fd_sc_hd__maj3_1 _094_ (.A(net1),
    .B(net17),
    .C(_035_),
    .X(_039_));
 sky130_fd_sc_hd__a21o_1 _095_ (.A1(_034_),
    .A2(_039_),
    .B1(_033_),
    .X(_040_));
 sky130_fd_sc_hd__nand2_1 _096_ (.A(_031_),
    .B(_040_),
    .Y(_041_));
 sky130_fd_sc_hd__a21o_1 _097_ (.A1(_030_),
    .A2(_041_),
    .B1(_028_),
    .X(_042_));
 sky130_fd_sc_hd__a21o_1 _098_ (.A1(_026_),
    .A2(_042_),
    .B1(_024_),
    .X(_043_));
 sky130_fd_sc_hd__a21oi_1 _099_ (.A1(_023_),
    .A2(_043_),
    .B1(_021_),
    .Y(_044_));
 sky130_fd_sc_hd__xnor2_1 _100_ (.A(net7),
    .B(_016_),
    .Y(_045_));
 sky130_fd_sc_hd__o21ai_0 _101_ (.A1(_020_),
    .A2(_044_),
    .B1(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__nor2b_1 _102_ (.A(net8),
    .B_N(_010_),
    .Y(_047_));
 sky130_fd_sc_hd__a21oi_1 _103_ (.A1(_017_),
    .A2(_046_),
    .B1(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__and2_0 _104_ (.A(net18),
    .B(net19),
    .X(_013_));
 sky130_fd_sc_hd__a211oi_1 _105_ (.A1(_017_),
    .A2(_046_),
    .B1(_047_),
    .C1(_011_),
    .Y(_049_));
 sky130_fd_sc_hd__o211a_1 _106_ (.A1(_011_),
    .A2(_047_),
    .B1(_046_),
    .C1(_017_),
    .X(_050_));
 sky130_fd_sc_hd__o31ai_1 _107_ (.A1(net20),
    .A2(_049_),
    .A3(_050_),
    .B1(_015_),
    .Y(net29));
 sky130_fd_sc_hd__a211o_1 _108_ (.A1(_009_),
    .A2(net14),
    .B1(net6),
    .C1(_013_),
    .X(_051_));
 sky130_fd_sc_hd__nand3_1 _109_ (.A(net20),
    .B(_019_),
    .C(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__and3_1 _110_ (.A(_021_),
    .B(_023_),
    .C(_043_),
    .X(_053_));
 sky130_fd_sc_hd__o31ai_1 _111_ (.A1(net20),
    .A2(_044_),
    .A3(_053_),
    .B1(_052_),
    .Y(net27));
 sky130_fd_sc_hd__a211o_1 _112_ (.A1(_009_),
    .A2(net13),
    .B1(_013_),
    .C1(net5),
    .X(_054_));
 sky130_fd_sc_hd__a31oi_1 _113_ (.A1(_024_),
    .A2(_026_),
    .A3(_042_),
    .B1(net20),
    .Y(_055_));
 sky130_fd_sc_hd__a32o_1 _114_ (.A1(net20),
    .A2(_023_),
    .A3(_054_),
    .B1(_055_),
    .B2(_043_),
    .X(net26));
 sky130_fd_sc_hd__a21o_1 _115_ (.A1(net16),
    .A2(_009_),
    .B1(net8),
    .X(_014_));
 sky130_fd_sc_hd__a211o_1 _116_ (.A1(_009_),
    .A2(net12),
    .B1(_013_),
    .C1(net4),
    .X(_056_));
 sky130_fd_sc_hd__a31oi_1 _117_ (.A1(_028_),
    .A2(_030_),
    .A3(_041_),
    .B1(net20),
    .Y(_057_));
 sky130_fd_sc_hd__a32o_1 _118_ (.A1(net20),
    .A2(_026_),
    .A3(_056_),
    .B1(_057_),
    .B2(_042_),
    .X(net25));
 sky130_fd_sc_hd__a211o_1 _119_ (.A1(_009_),
    .A2(net11),
    .B1(_013_),
    .C1(net3),
    .X(_058_));
 sky130_fd_sc_hd__nand3_1 _120_ (.A(net20),
    .B(_030_),
    .C(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__nor2_1 _121_ (.A(_031_),
    .B(_040_),
    .Y(_060_));
 sky130_fd_sc_hd__nand2b_1 _122_ (.A_N(net20),
    .B(_041_),
    .Y(_061_));
 sky130_fd_sc_hd__o21ai_0 _123_ (.A1(_060_),
    .A2(_061_),
    .B1(_059_),
    .Y(net24));
 sky130_fd_sc_hd__xnor2_1 _124_ (.A(_034_),
    .B(_039_),
    .Y(_062_));
 sky130_fd_sc_hd__a21o_1 _125_ (.A1(_009_),
    .A2(net10),
    .B1(net2),
    .X(_063_));
 sky130_fd_sc_hd__o211ai_1 _126_ (.A1(_013_),
    .A2(_014_),
    .B1(net20),
    .C1(_012_),
    .Y(_015_));
 sky130_fd_sc_hd__o21ai_0 _127_ (.A1(_013_),
    .A2(_063_),
    .B1(net20),
    .Y(_064_));
 sky130_fd_sc_hd__o22ai_1 _128_ (.A1(net20),
    .A2(_062_),
    .B1(_064_),
    .B2(_033_),
    .Y(net23));
 sky130_fd_sc_hd__nor2_1 _129_ (.A(net17),
    .B(_038_),
    .Y(_065_));
 sky130_fd_sc_hd__a21o_1 _130_ (.A1(net17),
    .A2(_038_),
    .B1(net20),
    .X(_066_));
 sky130_fd_sc_hd__a21o_1 _131_ (.A1(_009_),
    .A2(net9),
    .B1(net1),
    .X(_067_));
 sky130_fd_sc_hd__o21ai_0 _132_ (.A1(_013_),
    .A2(_067_),
    .B1(net20),
    .Y(_068_));
 sky130_fd_sc_hd__o22ai_1 _133_ (.A1(_065_),
    .A2(_066_),
    .B1(_068_),
    .B2(_036_),
    .Y(net22));
 sky130_fd_sc_hd__xnor2_1 _134_ (.A(net23),
    .B(net22),
    .Y(_069_));
 sky130_fd_sc_hd__xnor2_1 _135_ (.A(net24),
    .B(_069_),
    .Y(_000_));
 sky130_fd_sc_hd__xor2_1 _136_ (.A(net25),
    .B(_000_),
    .X(_001_));
 sky130_fd_sc_hd__mux2i_1 _137_ (.A0(net19),
    .A1(net18),
    .S(net15),
    .Y(_016_));
 sky130_fd_sc_hd__xor2_1 _138_ (.A(net26),
    .B(_001_),
    .X(_002_));
 sky130_fd_sc_hd__xor2_1 _139_ (.A(net27),
    .B(_002_),
    .X(_003_));
 sky130_fd_sc_hd__a21o_1 _140_ (.A1(_009_),
    .A2(net15),
    .B1(net7),
    .X(_004_));
 sky130_fd_sc_hd__o211ai_1 _141_ (.A1(_013_),
    .A2(_004_),
    .B1(_017_),
    .C1(net20),
    .Y(_005_));
 sky130_fd_sc_hd__or3_1 _142_ (.A(_020_),
    .B(_044_),
    .C(_045_),
    .X(_006_));
 sky130_fd_sc_hd__nand2_1 _143_ (.A(_046_),
    .B(_006_),
    .Y(_007_));
 sky130_fd_sc_hd__o21ai_0 _144_ (.A1(net20),
    .A2(_007_),
    .B1(_005_),
    .Y(net28));
 sky130_fd_sc_hd__xor3_1 _145_ (.A(net29),
    .B(_003_),
    .C(net28),
    .X(net30));
 sky130_fd_sc_hd__a31o_1 _146_ (.A1(_012_),
    .A2(_017_),
    .A3(_046_),
    .B1(net20),
    .X(_008_));
 sky130_fd_sc_hd__nor2_1 _147_ (.A(_048_),
    .B(_008_),
    .Y(net31));
 sky130_fd_sc_hd__nand2b_1 _148_ (.A_N(_016_),
    .B(net7),
    .Y(_017_));
 sky130_fd_sc_hd__nor2_1 _149_ (.A(_047_),
    .B(_008_),
    .Y(net21));
 sky130_fd_sc_hd__mux2i_1 _150_ (.A0(net19),
    .A1(net18),
    .S(net14),
    .Y(_018_));
 sky130_fd_sc_hd__buf_2 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_2 input10 (.A(B[1]),
    .X(net10));
 sky130_fd_sc_hd__buf_2 input11 (.A(B[2]),
    .X(net11));
 sky130_fd_sc_hd__buf_2 input12 (.A(B[3]),
    .X(net12));
 sky130_fd_sc_hd__buf_2 input13 (.A(B[4]),
    .X(net13));
 sky130_fd_sc_hd__buf_2 input14 (.A(B[5]),
    .X(net14));
 sky130_fd_sc_hd__buf_2 input15 (.A(B[6]),
    .X(net15));
 sky130_fd_sc_hd__buf_2 input16 (.A(B[7]),
    .X(net16));
 sky130_fd_sc_hd__buf_2 input17 (.A(CIN),
    .X(net17));
 sky130_fd_sc_hd__buf_2 input18 (.A(SEL[0]),
    .X(net18));
 sky130_fd_sc_hd__buf_2 input19 (.A(SEL[1]),
    .X(net19));
 sky130_fd_sc_hd__buf_2 input2 (.A(A[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_2 input20 (.A(SEL[2]),
    .X(net20));
 sky130_fd_sc_hd__buf_2 input3 (.A(A[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_2 input4 (.A(A[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_2 input5 (.A(A[4]),
    .X(net5));
 sky130_fd_sc_hd__buf_2 input6 (.A(A[5]),
    .X(net6));
 sky130_fd_sc_hd__buf_2 input7 (.A(A[6]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 input8 (.A(A[7]),
    .X(net8));
 sky130_fd_sc_hd__buf_2 input9 (.A(B[0]),
    .X(net9));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(COUT));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(F[0]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(F[1]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(F[2]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(F[3]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(F[4]));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(F[5]));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(F[6]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(F[7]));
 sky130_fd_sc_hd__buf_2 output30 (.A(net30),
    .X(PARITY));
 sky130_fd_sc_hd__buf_2 output31 (.A(net31),
    .X(V));
endmodule
