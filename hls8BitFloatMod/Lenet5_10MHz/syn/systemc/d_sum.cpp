// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "d_sum.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic d_sum::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic d_sum::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> d_sum::ap_ST_fsm_state1 = "1";
const sc_lv<6> d_sum::ap_ST_fsm_state2 = "10";
const sc_lv<6> d_sum::ap_ST_fsm_state3 = "100";
const sc_lv<6> d_sum::ap_ST_fsm_state4 = "1000";
const sc_lv<6> d_sum::ap_ST_fsm_state5 = "10000";
const sc_lv<6> d_sum::ap_ST_fsm_state6 = "100000";
const sc_lv<32> d_sum::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> d_sum::ap_const_lv32_1 = "1";
const sc_lv<1> d_sum::ap_const_lv1_0 = "0";
const sc_lv<32> d_sum::ap_const_lv32_3 = "11";
const sc_lv<32> d_sum::ap_const_lv32_4 = "100";
const sc_lv<3> d_sum::ap_const_lv3_0 = "000";
const sc_lv<32> d_sum::ap_const_lv32_2 = "10";
const sc_lv<1> d_sum::ap_const_lv1_1 = "1";
const sc_lv<32> d_sum::ap_const_lv32_5 = "101";
const sc_lv<3> d_sum::ap_const_lv3_6 = "110";
const sc_lv<3> d_sum::ap_const_lv3_1 = "1";
const sc_lv<3> d_sum::ap_const_lv3_4 = "100";
const sc_lv<4> d_sum::ap_const_lv4_6 = "110";
const bool d_sum::ap_const_boolean_1 = true;

d_sum::d_sum(sc_module_name name) : sc_module(name), mVcdFile(0) {
    lenetSynthMatlab_bkb_U8 = new lenetSynthMatlab_bkb<1,1,32,32,32>("lenetSynthMatlab_bkb_U8");
    lenetSynthMatlab_bkb_U8->din0(y_q0);
    lenetSynthMatlab_bkb_U8->din1(x_q0);
    lenetSynthMatlab_bkb_U8->dout(tmp_168_fu_100_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_124_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_124_p2 );

    SC_METHOD(thread_b_k_12_fu_178_p2);
    sensitive << ( b_k_reg_89 );

    SC_METHOD(thread_b_k_cast_fu_168_p1);
    sensitive << ( b_k_reg_89 );

    SC_METHOD(thread_exitcond1_fu_124_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( k_1_reg_78 );

    SC_METHOD(thread_exitcond2_fu_107_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( k_reg_67 );

    SC_METHOD(thread_exitcond_fu_172_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( b_k_reg_89 );

    SC_METHOD(thread_k_27_fu_113_p2);
    sensitive << ( k_reg_67 );

    SC_METHOD(thread_k_28_fu_130_p2);
    sensitive << ( k_1_reg_78 );

    SC_METHOD(thread_p_shl9_cast_fu_158_p1);
    sensitive << ( tmp_172_fu_152_p2 );

    SC_METHOD(thread_p_shl_cast_fu_148_p1);
    sensitive << ( p_shl_fu_140_p3 );

    SC_METHOD(thread_p_shl_fu_140_p3);
    sensitive << ( tmp_171_fu_136_p1 );

    SC_METHOD(thread_tmp1_cast_fu_190_p1);
    sensitive << ( tmp1_fu_184_p2 );

    SC_METHOD(thread_tmp1_fu_184_p2);
    sensitive << ( b_k_cast_fu_168_p1 );

    SC_METHOD(thread_tmp_165_fu_194_p2);
    sensitive << ( tmp_s_reg_235 );
    sensitive << ( tmp1_cast_fu_190_p1 );

    SC_METHOD(thread_tmp_166_fu_199_p1);
    sensitive << ( tmp_165_fu_194_p2 );

    SC_METHOD(thread_tmp_167_fu_204_p1);
    sensitive << ( b_k_reg_89 );

    SC_METHOD(thread_tmp_171_fu_136_p1);
    sensitive << ( k_1_reg_78 );

    SC_METHOD(thread_tmp_172_fu_152_p2);
    sensitive << ( k_1_reg_78 );

    SC_METHOD(thread_tmp_fu_119_p1);
    sensitive << ( k_reg_67 );

    SC_METHOD(thread_tmp_s_fu_162_p2);
    sensitive << ( p_shl_cast_fu_148_p1 );
    sensitive << ( p_shl9_cast_fu_158_p1 );

    SC_METHOD(thread_x_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_119_p1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_166_fu_199_p1 );

    SC_METHOD(thread_x_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_y_address0);
    sensitive << ( tmp_reg_217 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( y_addr_4_reg_253 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_167_fu_204_p1 );

    SC_METHOD(thread_y_ce0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_y_d0);
    sensitive << ( x_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_168_fu_100_p2 );

    SC_METHOD(thread_y_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_107_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_124_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( exitcond_fu_172_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "d_sum_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x_address0, "(port)x_address0");
    sc_trace(mVcdFile, x_ce0, "(port)x_ce0");
    sc_trace(mVcdFile, x_q0, "(port)x_q0");
    sc_trace(mVcdFile, y_address0, "(port)y_address0");
    sc_trace(mVcdFile, y_ce0, "(port)y_ce0");
    sc_trace(mVcdFile, y_we0, "(port)y_we0");
    sc_trace(mVcdFile, y_d0, "(port)y_d0");
    sc_trace(mVcdFile, y_q0, "(port)y_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, k_27_fu_113_p2, "k_27_fu_113_p2");
    sc_trace(mVcdFile, k_27_reg_212, "k_27_reg_212");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_119_p1, "tmp_fu_119_p1");
    sc_trace(mVcdFile, tmp_reg_217, "tmp_reg_217");
    sc_trace(mVcdFile, exitcond2_fu_107_p2, "exitcond2_fu_107_p2");
    sc_trace(mVcdFile, k_28_fu_130_p2, "k_28_fu_130_p2");
    sc_trace(mVcdFile, k_28_reg_230, "k_28_reg_230");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_s_fu_162_p2, "tmp_s_fu_162_p2");
    sc_trace(mVcdFile, tmp_s_reg_235, "tmp_s_reg_235");
    sc_trace(mVcdFile, exitcond1_fu_124_p2, "exitcond1_fu_124_p2");
    sc_trace(mVcdFile, b_k_12_fu_178_p2, "b_k_12_fu_178_p2");
    sc_trace(mVcdFile, b_k_12_reg_243, "b_k_12_reg_243");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, exitcond_fu_172_p2, "exitcond_fu_172_p2");
    sc_trace(mVcdFile, y_addr_4_reg_253, "y_addr_4_reg_253");
    sc_trace(mVcdFile, k_reg_67, "k_reg_67");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, k_1_reg_78, "k_1_reg_78");
    sc_trace(mVcdFile, b_k_reg_89, "b_k_reg_89");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_166_fu_199_p1, "tmp_166_fu_199_p1");
    sc_trace(mVcdFile, tmp_167_fu_204_p1, "tmp_167_fu_204_p1");
    sc_trace(mVcdFile, tmp_168_fu_100_p2, "tmp_168_fu_100_p2");
    sc_trace(mVcdFile, tmp_171_fu_136_p1, "tmp_171_fu_136_p1");
    sc_trace(mVcdFile, p_shl_fu_140_p3, "p_shl_fu_140_p3");
    sc_trace(mVcdFile, tmp_172_fu_152_p2, "tmp_172_fu_152_p2");
    sc_trace(mVcdFile, p_shl_cast_fu_148_p1, "p_shl_cast_fu_148_p1");
    sc_trace(mVcdFile, p_shl9_cast_fu_158_p1, "p_shl9_cast_fu_158_p1");
    sc_trace(mVcdFile, b_k_cast_fu_168_p1, "b_k_cast_fu_168_p1");
    sc_trace(mVcdFile, tmp1_fu_184_p2, "tmp1_fu_184_p2");
    sc_trace(mVcdFile, tmp1_cast_fu_190_p1, "tmp1_cast_fu_190_p1");
    sc_trace(mVcdFile, tmp_165_fu_194_p2, "tmp_165_fu_194_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

d_sum::~d_sum() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete lenetSynthMatlab_bkb_U8;
}

void d_sum::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_124_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        b_k_reg_89 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        b_k_reg_89 = b_k_12_reg_243.read();
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_107_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        k_1_reg_78 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(exitcond_fu_172_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        k_1_reg_78 = k_28_reg_230.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        k_reg_67 = k_27_reg_212.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_reg_67 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        b_k_12_reg_243 = b_k_12_fu_178_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        k_27_reg_212 = k_27_fu_113_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        k_28_reg_230 = k_28_fu_130_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_107_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        tmp_reg_217 = tmp_fu_119_p1.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_124_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        tmp_s_reg_235 = tmp_s_fu_162_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond_fu_172_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        y_addr_4_reg_253 =  (sc_lv<3>) (tmp_167_fu_204_p1.read());
    }
}

void d_sum::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void d_sum::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void d_sum::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void d_sum::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void d_sum::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void d_sum::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void d_sum::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(exitcond1_fu_124_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void d_sum::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void d_sum::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(exitcond1_fu_124_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void d_sum::thread_b_k_12_fu_178_p2() {
    b_k_12_fu_178_p2 = (!b_k_reg_89.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(b_k_reg_89.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void d_sum::thread_b_k_cast_fu_168_p1() {
    b_k_cast_fu_168_p1 = esl_zext<4,3>(b_k_reg_89.read());
}

void d_sum::thread_exitcond1_fu_124_p2() {
    exitcond1_fu_124_p2 = (!k_1_reg_78.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(k_1_reg_78.read() == ap_const_lv3_4);
}

void d_sum::thread_exitcond2_fu_107_p2() {
    exitcond2_fu_107_p2 = (!k_reg_67.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_67.read() == ap_const_lv3_6);
}

void d_sum::thread_exitcond_fu_172_p2() {
    exitcond_fu_172_p2 = (!b_k_reg_89.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(b_k_reg_89.read() == ap_const_lv3_6);
}

void d_sum::thread_k_27_fu_113_p2() {
    k_27_fu_113_p2 = (!k_reg_67.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(k_reg_67.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void d_sum::thread_k_28_fu_130_p2() {
    k_28_fu_130_p2 = (!k_1_reg_78.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(k_1_reg_78.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void d_sum::thread_p_shl9_cast_fu_158_p1() {
    p_shl9_cast_fu_158_p1 = esl_zext<6,3>(tmp_172_fu_152_p2.read());
}

void d_sum::thread_p_shl_cast_fu_148_p1() {
    p_shl_cast_fu_148_p1 = esl_zext<6,5>(p_shl_fu_140_p3.read());
}

void d_sum::thread_p_shl_fu_140_p3() {
    p_shl_fu_140_p3 = esl_concat<2,3>(tmp_171_fu_136_p1.read(), ap_const_lv3_0);
}

void d_sum::thread_tmp1_cast_fu_190_p1() {
    tmp1_cast_fu_190_p1 = esl_zext<6,4>(tmp1_fu_184_p2.read());
}

void d_sum::thread_tmp1_fu_184_p2() {
    tmp1_fu_184_p2 = (!b_k_cast_fu_168_p1.read().is_01() || !ap_const_lv4_6.is_01())? sc_lv<4>(): (sc_biguint<4>(b_k_cast_fu_168_p1.read()) + sc_biguint<4>(ap_const_lv4_6));
}

void d_sum::thread_tmp_165_fu_194_p2() {
    tmp_165_fu_194_p2 = (!tmp1_cast_fu_190_p1.read().is_01() || !tmp_s_reg_235.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp1_cast_fu_190_p1.read()) + sc_biguint<6>(tmp_s_reg_235.read()));
}

void d_sum::thread_tmp_166_fu_199_p1() {
    tmp_166_fu_199_p1 = esl_zext<64,6>(tmp_165_fu_194_p2.read());
}

void d_sum::thread_tmp_167_fu_204_p1() {
    tmp_167_fu_204_p1 = esl_zext<64,3>(b_k_reg_89.read());
}

void d_sum::thread_tmp_171_fu_136_p1() {
    tmp_171_fu_136_p1 = k_1_reg_78.read().range(2-1, 0);
}

void d_sum::thread_tmp_172_fu_152_p2() {
    tmp_172_fu_152_p2 = (!ap_const_lv3_1.is_01())? sc_lv<3>(): k_1_reg_78.read() << (unsigned short)ap_const_lv3_1.to_uint();
}

void d_sum::thread_tmp_fu_119_p1() {
    tmp_fu_119_p1 = esl_zext<64,3>(k_reg_67.read());
}

void d_sum::thread_tmp_s_fu_162_p2() {
    tmp_s_fu_162_p2 = (!p_shl_cast_fu_148_p1.read().is_01() || !p_shl9_cast_fu_158_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(p_shl_cast_fu_148_p1.read()) - sc_biguint<6>(p_shl9_cast_fu_158_p1.read()));
}

void d_sum::thread_x_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        x_address0 =  (sc_lv<5>) (tmp_166_fu_199_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        x_address0 =  (sc_lv<5>) (tmp_fu_119_p1.read());
    } else {
        x_address0 = "XXXXX";
    }
}

void d_sum::thread_x_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        x_ce0 = ap_const_logic_1;
    } else {
        x_ce0 = ap_const_logic_0;
    }
}

void d_sum::thread_y_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        y_address0 = y_addr_4_reg_253.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        y_address0 =  (sc_lv<3>) (tmp_167_fu_204_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_address0 =  (sc_lv<3>) (tmp_reg_217.read());
    } else {
        y_address0 =  (sc_lv<3>) ("XXX");
    }
}

void d_sum::thread_y_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        y_ce0 = ap_const_logic_1;
    } else {
        y_ce0 = ap_const_logic_0;
    }
}

void d_sum::thread_y_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        y_d0 = tmp_168_fu_100_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_d0 = x_q0.read();
    } else {
        y_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void d_sum::thread_y_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        y_we0 = ap_const_logic_1;
    } else {
        y_we0 = ap_const_logic_0;
    }
}

void d_sum::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(exitcond2_fu_107_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(exitcond1_fu_124_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(exitcond_fu_172_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}
