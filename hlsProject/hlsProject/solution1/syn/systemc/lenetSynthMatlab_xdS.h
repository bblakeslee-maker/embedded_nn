// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __lenetSynthMatlab_xdS__HH__
#define __lenetSynthMatlab_xdS__HH__
#include "ACMP_dcmp_comb.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(lenetSynthMatlab_xdS) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<5> >   opcode;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dcmp_comb<ID, 1, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dcmp_comb_U;

    SC_CTOR(lenetSynthMatlab_xdS):  ACMP_dcmp_comb_U ("ACMP_dcmp_comb_U") {
        ACMP_dcmp_comb_U.din0(din0);
        ACMP_dcmp_comb_U.din1(din1);
        ACMP_dcmp_comb_U.dout(dout);
        ACMP_dcmp_comb_U.opcode(opcode);

    }

};

#endif //
