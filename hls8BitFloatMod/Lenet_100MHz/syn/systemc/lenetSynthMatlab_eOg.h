// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __lenetSynthMatlab_eOg_H__
#define __lenetSynthMatlab_eOg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct lenetSynthMatlab_eOg_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
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


   SC_CTOR(lenetSynthMatlab_eOg_ram) {
        ram[0] = "0b00111001101000010101001000000010";
        ram[1] = "0b00111000110100101111110100010011";
        ram[2] = "0b10110111111010110101100110010111";
        ram[3] = "0b00111001010000000011000000001011";
        ram[4] = "0b10111000110110000011110110010011";
        ram[5] = "0b00111000111010100001001100111001";
        ram[6] = "0b10111001000101000100111111111000";
        ram[7] = "0b10111001010011101000010100111111";
        ram[8] = "0b00111000001111111110011101000001";
        ram[9] = "0b10111001010001110111010001111110";
        ram[10] = "0b00110111100010100011011110111110";
        ram[11] = "0b10111001001111010001000111011001";
        ram[12] = "0b10111010000011000010100101100110";
        ram[13] = "0b10111001100010100111011100110000";
        ram[14] = "0b10111000100010111001011110111001";
        ram[15] = "0b00111000100011111101111101101111";


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


SC_MODULE(lenetSynthMatlab_eOg) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


lenetSynthMatlab_eOg_ram* meminst;


SC_CTOR(lenetSynthMatlab_eOg) {
meminst = new lenetSynthMatlab_eOg_ram("lenetSynthMatlab_eOg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~lenetSynthMatlab_eOg() {
    delete meminst;
}


};//endmodule
#endif
