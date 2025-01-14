// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __lenetSynthMatlab_lbW_H__
#define __lenetSynthMatlab_lbW_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct lenetSynthMatlab_lbW_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(lenetSynthMatlab_lbW_ram) {
        ram[0] = "0b10111100100001100000111111101001";
        ram[1] = "0b00111101100001101101100011001010";
        ram[2] = "0b10111011110101110111111010101001";
        ram[3] = "0b00111011011000111010011110011111";
        ram[4] = "0b10111100011010111001110111011100";
        ram[5] = "0b10111100101001111111110011100000";
        ram[6] = "0b10111100001000000111000000000100";
        ram[7] = "0b00111100011110110100111010101011";
        ram[8] = "0b10111100001100101011111001100111";
        ram[9] = "0b10111011110010001101110111111100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(lenetSynthMatlab_lbW) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


lenetSynthMatlab_lbW_ram* meminst;


SC_CTOR(lenetSynthMatlab_lbW) {
meminst = new lenetSynthMatlab_lbW_ram("lenetSynthMatlab_lbW_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~lenetSynthMatlab_lbW() {
    delete meminst;
}


};//endmodule
#endif
