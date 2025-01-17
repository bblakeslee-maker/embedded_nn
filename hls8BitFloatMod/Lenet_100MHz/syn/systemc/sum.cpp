// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "sum.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic sum::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic sum::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<12> sum::ap_ST_fsm_state1 = "1";
const sc_lv<12> sum::ap_ST_fsm_state2 = "10";
const sc_lv<12> sum::ap_ST_fsm_state3 = "100";
const sc_lv<12> sum::ap_ST_fsm_state4 = "1000";
const sc_lv<12> sum::ap_ST_fsm_state5 = "10000";
const sc_lv<12> sum::ap_ST_fsm_state6 = "100000";
const sc_lv<12> sum::ap_ST_fsm_state7 = "1000000";
const sc_lv<12> sum::ap_ST_fsm_state8 = "10000000";
const sc_lv<12> sum::ap_ST_fsm_state9 = "100000000";
const sc_lv<12> sum::ap_ST_fsm_state10 = "1000000000";
const sc_lv<12> sum::ap_ST_fsm_state11 = "10000000000";
const sc_lv<12> sum::ap_ST_fsm_state12 = "100000000000";
const sc_lv<32> sum::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> sum::ap_const_lv32_1 = "1";
const sc_lv<1> sum::ap_const_lv1_0 = "0";
const sc_lv<32> sum::ap_const_lv32_3 = "11";
const sc_lv<32> sum::ap_const_lv32_4 = "100";
const sc_lv<32> sum::ap_const_lv32_5 = "101";
const sc_lv<32> sum::ap_const_lv32_A = "1010";
const sc_lv<3> sum::ap_const_lv3_0 = "000";
const sc_lv<32> sum::ap_const_lv32_2 = "10";
const sc_lv<1> sum::ap_const_lv1_1 = "1";
const sc_lv<32> sum::ap_const_lv32_B = "1011";
const sc_lv<32> sum::ap_const_lv32_6 = "110";
const sc_lv<3> sum::ap_const_lv3_5 = "101";
const sc_lv<3> sum::ap_const_lv3_1 = "1";
const sc_lv<3> sum::ap_const_lv3_4 = "100";
const sc_lv<2> sum::ap_const_lv2_0 = "00";
const sc_lv<4> sum::ap_const_lv4_5 = "101";
const bool sum::ap_const_boolean_1 = true;

sum::sum(sc_module_name name) : sc_module(name), mVcdFile(0) {
    lenetSynthMatlab_bkb_U1 = new lenetSynthMatlab_bkb<1,5,32,32,32>("lenetSynthMatlab_bkb_U1");
    lenetSynthMatlab_bkb_U1->clk(ap_clk);
    lenetSynthMatlab_bkb_U1->reset(ap_rst);
    lenetSynthMatlab_bkb_U1->din0(y_load_reg_256);
    lenetSynthMatlab_bkb_U1->din1(x_load_1_reg_251);
    lenetSynthMatlab_bkb_U1->ce(ap_var_for_const0);
    lenetSynthMatlab_bkb_U1->dout(grp_fu_102_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
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

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_127_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_127_p2 );

    SC_METHOD(thread_b_k_1_fu_171_p2);
    sensitive << ( b_k_reg_91 );

    SC_METHOD(thread_b_k_cast_fu_161_p1);
    sensitive << ( b_k_reg_91 );

    SC_METHOD(thread_exitcond1_fu_127_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( k_1_reg_80 );

    SC_METHOD(thread_exitcond2_fu_106_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( k_reg_69 );

    SC_METHOD(thread_exitcond_fu_165_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( b_k_reg_91 );

    SC_METHOD(thread_k_1_cast_fu_123_p1);
    sensitive << ( k_1_reg_80 );

    SC_METHOD(thread_k_2_fu_112_p2);
    sensitive << ( k_reg_69 );

    SC_METHOD(thread_k_3_fu_133_p2);
    sensitive << ( k_1_reg_80 );

    SC_METHOD(thread_p_shl_fu_143_p3);
    sensitive << ( tmp_1_fu_139_p1 );

    SC_METHOD(thread_tmp1_cast_fu_157_p1);
    sensitive << ( tmp1_fu_151_p2 );

    SC_METHOD(thread_tmp1_fu_151_p2);
    sensitive << ( k_1_cast_fu_123_p1 );
    sensitive << ( p_shl_fu_143_p3 );

    SC_METHOD(thread_tmp2_cast_fu_183_p1);
    sensitive << ( tmp2_fu_177_p2 );

    SC_METHOD(thread_tmp2_fu_177_p2);
    sensitive << ( b_k_cast_fu_161_p1 );

    SC_METHOD(thread_tmp_1_fu_139_p1);
    sensitive << ( k_1_reg_80 );

    SC_METHOD(thread_tmp_5_fu_187_p2);
    sensitive << ( tmp1_cast_reg_228 );
    sensitive << ( tmp2_cast_fu_183_p1 );

    SC_METHOD(thread_tmp_6_fu_192_p1);
    sensitive << ( tmp_5_fu_187_p2 );

    SC_METHOD(thread_tmp_7_fu_197_p1);
    sensitive << ( b_k_reg_91 );

    SC_METHOD(thread_tmp_fu_118_p1);
    sensitive << ( k_reg_69 );

    SC_METHOD(thread_x_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_118_p1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_6_fu_192_p1 );

    SC_METHOD(thread_x_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_y_address0);
    sensitive << ( tmp_reg_210 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( y_addr_1_reg_246 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( tmp_7_fu_197_p1 );

    SC_METHOD(thread_y_ce0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_y_d0);
    sensitive << ( x_q0 );
    sensitive << ( tmp_8_reg_261 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_y_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_106_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_127_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( exitcond_fu_165_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "sum_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, k_2_fu_112_p2, "k_2_fu_112_p2");
    sc_trace(mVcdFile, k_2_reg_205, "k_2_reg_205");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_118_p1, "tmp_fu_118_p1");
    sc_trace(mVcdFile, tmp_reg_210, "tmp_reg_210");
    sc_trace(mVcdFile, exitcond2_fu_106_p2, "exitcond2_fu_106_p2");
    sc_trace(mVcdFile, k_3_fu_133_p2, "k_3_fu_133_p2");
    sc_trace(mVcdFile, k_3_reg_223, "k_3_reg_223");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp1_cast_fu_157_p1, "tmp1_cast_fu_157_p1");
    sc_trace(mVcdFile, tmp1_cast_reg_228, "tmp1_cast_reg_228");
    sc_trace(mVcdFile, exitcond1_fu_127_p2, "exitcond1_fu_127_p2");
    sc_trace(mVcdFile, b_k_1_fu_171_p2, "b_k_1_fu_171_p2");
    sc_trace(mVcdFile, b_k_1_reg_236, "b_k_1_reg_236");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, exitcond_fu_165_p2, "exitcond_fu_165_p2");
    sc_trace(mVcdFile, y_addr_1_reg_246, "y_addr_1_reg_246");
    sc_trace(mVcdFile, x_load_1_reg_251, "x_load_1_reg_251");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, y_load_reg_256, "y_load_reg_256");
    sc_trace(mVcdFile, grp_fu_102_p2, "grp_fu_102_p2");
    sc_trace(mVcdFile, tmp_8_reg_261, "tmp_8_reg_261");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, k_reg_69, "k_reg_69");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, k_1_reg_80, "k_1_reg_80");
    sc_trace(mVcdFile, b_k_reg_91, "b_k_reg_91");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, tmp_6_fu_192_p1, "tmp_6_fu_192_p1");
    sc_trace(mVcdFile, tmp_7_fu_197_p1, "tmp_7_fu_197_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_1_fu_139_p1, "tmp_1_fu_139_p1");
    sc_trace(mVcdFile, k_1_cast_fu_123_p1, "k_1_cast_fu_123_p1");
    sc_trace(mVcdFile, p_shl_fu_143_p3, "p_shl_fu_143_p3");
    sc_trace(mVcdFile, tmp1_fu_151_p2, "tmp1_fu_151_p2");
    sc_trace(mVcdFile, b_k_cast_fu_161_p1, "b_k_cast_fu_161_p1");
    sc_trace(mVcdFile, tmp2_fu_177_p2, "tmp2_fu_177_p2");
    sc_trace(mVcdFile, tmp2_cast_fu_183_p1, "tmp2_cast_fu_183_p1");
    sc_trace(mVcdFile, tmp_5_fu_187_p2, "tmp_5_fu_187_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

sum::~sum() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete lenetSynthMatlab_bkb_U1;
}

void sum::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void sum::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_127_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        b_k_reg_91 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        b_k_reg_91 = b_k_1_reg_236.read();
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_106_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        k_1_reg_80 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(exitcond_fu_165_p2.read(), ap_const_lv1_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        k_1_reg_80 = k_3_reg_223.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        k_reg_69 = k_2_reg_205.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_reg_69 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        b_k_1_reg_236 = b_k_1_fu_171_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        k_2_reg_205 = k_2_fu_112_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        k_3_reg_223 = k_3_fu_133_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_127_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        tmp1_cast_reg_228 = tmp1_cast_fu_157_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        tmp_8_reg_261 = grp_fu_102_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_106_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        tmp_reg_210 = tmp_fu_118_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        x_load_1_reg_251 = x_q0.read();
        y_load_reg_256 = y_q0.read();
    }
    if ((esl_seteq<1,1,1>(exitcond_fu_165_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        y_addr_1_reg_246 =  (sc_lv<3>) (tmp_7_fu_197_p1.read());
    }
}

void sum::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void sum::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void sum::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[11];
}

void sum::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void sum::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void sum::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void sum::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void sum::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void sum::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void sum::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(exitcond1_fu_127_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void sum::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void sum::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(exitcond1_fu_127_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void sum::thread_b_k_1_fu_171_p2() {
    b_k_1_fu_171_p2 = (!b_k_reg_91.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(b_k_reg_91.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void sum::thread_b_k_cast_fu_161_p1() {
    b_k_cast_fu_161_p1 = esl_zext<4,3>(b_k_reg_91.read());
}

void sum::thread_exitcond1_fu_127_p2() {
    exitcond1_fu_127_p2 = (!k_1_reg_80.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(k_1_reg_80.read() == ap_const_lv3_4);
}

void sum::thread_exitcond2_fu_106_p2() {
    exitcond2_fu_106_p2 = (!k_reg_69.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_69.read() == ap_const_lv3_5);
}

void sum::thread_exitcond_fu_165_p2() {
    exitcond_fu_165_p2 = (!b_k_reg_91.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(b_k_reg_91.read() == ap_const_lv3_5);
}

void sum::thread_k_1_cast_fu_123_p1() {
    k_1_cast_fu_123_p1 = esl_zext<4,3>(k_1_reg_80.read());
}

void sum::thread_k_2_fu_112_p2() {
    k_2_fu_112_p2 = (!k_reg_69.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(k_reg_69.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void sum::thread_k_3_fu_133_p2() {
    k_3_fu_133_p2 = (!k_1_reg_80.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(k_1_reg_80.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void sum::thread_p_shl_fu_143_p3() {
    p_shl_fu_143_p3 = esl_concat<2,2>(tmp_1_fu_139_p1.read(), ap_const_lv2_0);
}

void sum::thread_tmp1_cast_fu_157_p1() {
    tmp1_cast_fu_157_p1 = esl_zext<5,4>(tmp1_fu_151_p2.read());
}

void sum::thread_tmp1_fu_151_p2() {
    tmp1_fu_151_p2 = (!k_1_cast_fu_123_p1.read().is_01() || !p_shl_fu_143_p3.read().is_01())? sc_lv<4>(): (sc_biguint<4>(k_1_cast_fu_123_p1.read()) + sc_biguint<4>(p_shl_fu_143_p3.read()));
}

void sum::thread_tmp2_cast_fu_183_p1() {
    tmp2_cast_fu_183_p1 = esl_zext<5,4>(tmp2_fu_177_p2.read());
}

void sum::thread_tmp2_fu_177_p2() {
    tmp2_fu_177_p2 = (!b_k_cast_fu_161_p1.read().is_01() || !ap_const_lv4_5.is_01())? sc_lv<4>(): (sc_biguint<4>(b_k_cast_fu_161_p1.read()) + sc_biguint<4>(ap_const_lv4_5));
}

void sum::thread_tmp_1_fu_139_p1() {
    tmp_1_fu_139_p1 = k_1_reg_80.read().range(2-1, 0);
}

void sum::thread_tmp_5_fu_187_p2() {
    tmp_5_fu_187_p2 = (!tmp2_cast_fu_183_p1.read().is_01() || !tmp1_cast_reg_228.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp2_cast_fu_183_p1.read()) + sc_biguint<5>(tmp1_cast_reg_228.read()));
}

void sum::thread_tmp_6_fu_192_p1() {
    tmp_6_fu_192_p1 = esl_zext<64,5>(tmp_5_fu_187_p2.read());
}

void sum::thread_tmp_7_fu_197_p1() {
    tmp_7_fu_197_p1 = esl_zext<64,3>(b_k_reg_91.read());
}

void sum::thread_tmp_fu_118_p1() {
    tmp_fu_118_p1 = esl_zext<64,3>(k_reg_69.read());
}

void sum::thread_x_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        x_address0 =  (sc_lv<5>) (tmp_6_fu_192_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        x_address0 =  (sc_lv<5>) (tmp_fu_118_p1.read());
    } else {
        x_address0 = "XXXXX";
    }
}

void sum::thread_x_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        x_ce0 = ap_const_logic_1;
    } else {
        x_ce0 = ap_const_logic_0;
    }
}

void sum::thread_y_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        y_address0 = y_addr_1_reg_246.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        y_address0 =  (sc_lv<3>) (tmp_7_fu_197_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_address0 =  (sc_lv<3>) (tmp_reg_210.read());
    } else {
        y_address0 =  (sc_lv<3>) ("XXX");
    }
}

void sum::thread_y_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()))) {
        y_ce0 = ap_const_logic_1;
    } else {
        y_ce0 = ap_const_logic_0;
    }
}

void sum::thread_y_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        y_d0 = tmp_8_reg_261.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_d0 = x_q0.read();
    } else {
        y_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void sum::thread_y_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()))) {
        y_we0 = ap_const_logic_1;
    } else {
        y_we0 = ap_const_logic_0;
    }
}

void sum::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(exitcond2_fu_106_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(exitcond1_fu_127_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(exitcond_fu_165_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<12>) ("XXXXXXXXXXXX");
            break;
    }
}

}

