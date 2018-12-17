// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: BryanBlakeslee:LeNet5:lenetSynthMatlab_fixpt:1.0
// IP Revision: 1812101522

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
lenetSynthMatlab_fixpt_0 your_instance_name (
  .inputImg_ce0(inputImg_ce0),              // output wire inputImg_ce0
  .inputImg_we0(inputImg_we0),              // output wire inputImg_we0
  .inputImg_ce1(inputImg_ce1),              // output wire inputImg_ce1
  .inputImg_we1(inputImg_we1),              // output wire inputImg_we1
  .netScores_ce0(netScores_ce0),            // output wire netScores_ce0
  .netScores_we0(netScores_we0),            // output wire netScores_we0
  .ap_clk(ap_clk),                          // input wire ap_clk
  .ap_rst(ap_rst),                          // input wire ap_rst
  .ap_start(ap_start),                      // input wire ap_start
  .ap_done(ap_done),                        // output wire ap_done
  .ap_idle(ap_idle),                        // output wire ap_idle
  .ap_ready(ap_ready),                      // output wire ap_ready
  .inputImg_address0(inputImg_address0),    // output wire [9 : 0] inputImg_address0
  .inputImg_d0(inputImg_d0),                // output wire [7 : 0] inputImg_d0
  .inputImg_q0(inputImg_q0),                // input wire [7 : 0] inputImg_q0
  .inputImg_address1(inputImg_address1),    // output wire [9 : 0] inputImg_address1
  .inputImg_d1(inputImg_d1),                // output wire [7 : 0] inputImg_d1
  .inputImg_q1(inputImg_q1),                // input wire [7 : 0] inputImg_q1
  .netScores_address0(netScores_address0),  // output wire [3 : 0] netScores_address0
  .netScores_d0(netScores_d0)              // output wire [15 : 0] netScores_d0
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

