// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sum (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_address0,
        x_ce0,
        x_q0,
        y_address0,
        y_ce0,
        y_we0,
        y_d0,
        y_q0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [2:0] y_address0;
output   y_ce0;
output   y_we0;
output  [31:0] y_d0;
input  [31:0] y_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] x_address0;
reg x_ce0;
reg[2:0] y_address0;
reg y_ce0;
reg y_we0;
reg[31:0] y_d0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] k_2_fu_115_p2;
reg   [2:0] k_2_reg_208;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_121_p1;
reg   [63:0] tmp_reg_213;
wire   [0:0] exitcond2_fu_109_p2;
wire   [2:0] k_3_fu_136_p2;
reg   [2:0] k_3_reg_226;
wire    ap_CS_fsm_state4;
wire   [4:0] tmp1_cast_fu_160_p1;
reg   [4:0] tmp1_cast_reg_231;
wire   [0:0] exitcond1_fu_130_p2;
wire   [2:0] b_k_1_fu_174_p2;
reg   [2:0] b_k_1_reg_239;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond_fu_168_p2;
reg   [2:0] y_addr_1_reg_249;
reg   [2:0] k_reg_69;
wire    ap_CS_fsm_state3;
reg   [2:0] k_1_reg_80;
reg   [2:0] b_k_reg_91;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_6_fu_195_p1;
wire   [63:0] tmp_7_fu_200_p1;
wire   [31:0] tmp_8_fu_102_p2;
wire   [1:0] tmp_1_fu_142_p1;
wire   [3:0] k_1_cast_fu_126_p1;
wire   [3:0] p_shl_fu_146_p3;
wire   [3:0] tmp1_fu_154_p2;
wire   [3:0] b_k_cast_fu_164_p1;
wire   [3:0] tmp2_fu_180_p2;
wire   [4:0] tmp2_cast_fu_186_p1;
wire   [4:0] tmp_5_fu_190_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

lenetSynthMatlab_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
lenetSynthMatlab_bkb_U1(
    .din0(y_q0),
    .din1(x_q0),
    .dout(tmp_8_fu_102_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        b_k_reg_91 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        b_k_reg_91 <= b_k_1_reg_239;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_109_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        k_1_reg_80 <= 3'd0;
    end else if (((exitcond_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        k_1_reg_80 <= k_3_reg_226;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_reg_69 <= k_2_reg_208;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_69 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        b_k_1_reg_239 <= b_k_1_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        k_2_reg_208 <= k_2_fu_115_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        k_3_reg_226 <= k_3_fu_136_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp1_cast_reg_231[3 : 0] <= tmp1_cast_fu_160_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_213[2 : 0] <= tmp_fu_121_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        y_addr_1_reg_249 <= tmp_7_fu_200_p1;
    end
end

always @ (*) begin
    if ((((exitcond1_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        x_address0 = tmp_6_fu_195_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        x_address0 = tmp_fu_121_p1;
    end else begin
        x_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        x_ce0 = 1'b1;
    end else begin
        x_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        y_address0 = y_addr_1_reg_249;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        y_address0 = tmp_7_fu_200_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        y_address0 = tmp_reg_213;
    end else begin
        y_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
        y_ce0 = 1'b1;
    end else begin
        y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        y_d0 = tmp_8_fu_102_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        y_d0 = x_q0;
    end else begin
        y_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        y_we0 = 1'b1;
    end else begin
        y_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond2_fu_109_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond1_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign b_k_1_fu_174_p2 = (b_k_reg_91 + 3'd1);

assign b_k_cast_fu_164_p1 = b_k_reg_91;

assign exitcond1_fu_130_p2 = ((k_1_reg_80 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond2_fu_109_p2 = ((k_reg_69 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond_fu_168_p2 = ((b_k_reg_91 == 3'd5) ? 1'b1 : 1'b0);

assign k_1_cast_fu_126_p1 = k_1_reg_80;

assign k_2_fu_115_p2 = (k_reg_69 + 3'd1);

assign k_3_fu_136_p2 = (k_1_reg_80 + 3'd1);

assign p_shl_fu_146_p3 = {{tmp_1_fu_142_p1}, {2'd0}};

assign tmp1_cast_fu_160_p1 = tmp1_fu_154_p2;

assign tmp1_fu_154_p2 = (k_1_cast_fu_126_p1 + p_shl_fu_146_p3);

assign tmp2_cast_fu_186_p1 = tmp2_fu_180_p2;

assign tmp2_fu_180_p2 = (b_k_cast_fu_164_p1 + 4'd5);

assign tmp_1_fu_142_p1 = k_1_reg_80[1:0];

assign tmp_5_fu_190_p2 = (tmp2_cast_fu_186_p1 + tmp1_cast_reg_231);

assign tmp_6_fu_195_p1 = tmp_5_fu_190_p2;

assign tmp_7_fu_200_p1 = b_k_reg_91;

assign tmp_fu_121_p1 = k_reg_69;

always @ (posedge ap_clk) begin
    tmp_reg_213[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
    tmp1_cast_reg_231[4] <= 1'b0;
end

endmodule //sum
