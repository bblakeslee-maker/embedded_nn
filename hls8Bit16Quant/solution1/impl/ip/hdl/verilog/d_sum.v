// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module d_sum (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        X_address0,
        X_ce0,
        X_q0,
        Y_address0,
        Y_ce0,
        Y_we0,
        Y_d0
);

parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] X_address0;
output   X_ce0;
input  [63:0] X_q0;
output  [2:0] Y_address0;
output   Y_ce0;
output   Y_we0;
output  [63:0] Y_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] X_address0;
reg X_ce0;
reg Y_ce0;
reg Y_we0;

(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] indvars_iv_next2_fu_210_p2;
reg   [2:0] indvars_iv_next2_reg_540;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp_fu_216_p1;
reg   [4:0] tmp_reg_545;
wire   [0:0] exitcond1_fu_204_p2;
wire   [5:0] ix_8_fu_225_p2;
reg   [5:0] ix_8_reg_555;
wire   [4:0] ixstart_cast_fu_231_p2;
wire    ap_CS_fsm_state3;
wire   [63:0] s12_fu_258_p3;
wire   [4:0] ix_9_fu_276_p2;
reg   [4:0] ix_9_reg_573;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_270_p2;
wire   [31:0] p_s_fu_307_p3;
wire   [0:0] ap_phi_mux_b3_phi_fu_178_p4;
wire   [0:0] tmp_67_fu_283_p2;
wire   [2:0] i_fu_320_p2;
wire   [5:0] indvars_iv_next_fu_326_p2;
reg   [3:0] tmp_98_reg_599;
wire    ap_CS_fsm_state11;
wire  signed [31:0] ixstart_21_cast_fu_398_p1;
wire    ap_CS_fsm_state12;
reg   [3:0] tmp_96_reg_609;
wire    ap_CS_fsm_state19;
wire  signed [31:0] ixstart_20_cast_fu_468_p1;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire   [63:0] s_2_fu_529_p3;
wire    ap_CS_fsm_state22;
reg   [2:0] indvars_iv1_reg_96;
reg   [5:0] indvars_iv_reg_107;
reg   [2:0] iy_reg_119;
reg   [5:0] ix_reg_131;
reg   [63:0] s_1_reg_142;
reg   [31:0] ixstart_reg_153;
reg  signed [31:0] ixstart_4_reg_186;
reg   [4:0] ix_1_reg_164;
reg   [0:0] b3_reg_173;
wire   [63:0] tmp_s_fu_220_p1;
wire   [63:0] tmp_64_fu_315_p1;
wire  signed [63:0] tmp_71_fu_472_p1;
wire   [4:0] grp_fu_199_p0;
wire   [3:0] grp_fu_199_p1;
wire   [36:0] s_11_fu_236_p1;
wire   [0:0] tmp_94_fu_240_p3;
wire   [63:0] s_4_fu_248_p2;
wire   [63:0] s_16_cast_fu_254_p1;
wire   [5:0] ix_1_cast_cast_fu_266_p1;
wire   [31:0] ixstart_16_fu_289_p2;
wire   [0:0] tmp_70_fu_295_p2;
wire   [31:0] ixstart_17_fu_301_p2;
wire   [4:0] mul4_fu_335_p1;
wire   [11:0] mul4_fu_335_p2;
wire   [2:0] grp_fu_199_p2;
wire   [2:0] tmp_97_fu_351_p1;
wire   [5:0] p_shl10_fu_355_p3;
wire   [3:0] p_shl11_fu_367_p3;
wire   [6:0] p_shl10_cast_fu_363_p1;
wire   [6:0] p_shl11_cast_fu_375_p1;
wire  signed [4:0] tmp_53_fu_385_p1;
wire   [6:0] tmp_146_cast_fu_388_p1;
wire   [6:0] tmp_69_fu_379_p2;
wire   [6:0] ixstart_15_fu_392_p2;
wire   [4:0] mul_fu_405_p1;
wire   [11:0] mul_fu_405_p2;
wire   [2:0] tmp_95_fu_421_p1;
wire   [5:0] p_shl_fu_425_p3;
wire   [3:0] p_shl8_fu_437_p3;
wire   [6:0] p_shl_cast_fu_433_p1;
wire   [6:0] p_shl8_cast_fu_445_p1;
wire  signed [4:0] tmp_52_fu_455_p1;
wire   [6:0] tmp_143_cast_fu_458_p1;
wire   [6:0] tmp_66_fu_449_p2;
wire   [6:0] ixstart_14_fu_462_p2;
wire   [36:0] tmp_102_fu_489_p1;
wire   [36:0] tmp_101_fu_485_p1;
wire   [37:0] tmp_100_fu_481_p1;
wire   [37:0] tmp_99_fu_477_p1;
wire   [37:0] s_18_cast_fu_505_p2;
wire   [63:0] s_13_fu_493_p2;
wire   [36:0] s_5_fu_499_p2;
wire   [0:0] tmp_103_fu_511_p3;
wire   [63:0] s_14_fu_519_p2;
wire   [63:0] s_20_cast_fu_525_p1;
reg    grp_fu_199_ap_start;
wire    grp_fu_199_ap_done;
reg   [21:0] ap_NS_fsm;
wire   [11:0] mul4_fu_335_p10;
wire   [11:0] mul_fu_405_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 22'd1;
end

lenetSynthMatlab_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 9 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 4 ),
    .dout_WIDTH( 3 ))
lenetSynthMatlab_dEe_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_199_ap_start),
    .done(grp_fu_199_ap_done),
    .din0(grp_fu_199_p0),
    .din1(grp_fu_199_p1),
    .ce(1'b1),
    .dout(grp_fu_199_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        b3_reg_173 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        b3_reg_173 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv1_reg_96 <= 3'd0;
    end else if (((exitcond_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv1_reg_96 <= indvars_iv_next2_reg_540;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvars_iv_reg_107 <= 6'd4;
    end else if (((exitcond_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv_reg_107 <= indvars_iv_next_fu_326_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        ix_1_reg_164 <= ix_9_reg_573;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ix_1_reg_164 <= ixstart_cast_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ix_reg_131 <= 6'd63;
    end else if (((exitcond_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ix_reg_131 <= ix_8_reg_555;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_67_fu_283_p2 == 1'd0) & (ap_phi_mux_b3_phi_fu_178_p4 == 1'd0) & (exitcond_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ixstart_4_reg_186 <= p_s_fu_307_p3;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        ixstart_4_reg_186 <= ixstart_21_cast_fu_398_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        ixstart_4_reg_186 <= ixstart_20_cast_fu_468_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        ixstart_reg_153 <= ixstart_4_reg_186;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ixstart_reg_153 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        iy_reg_119 <= 3'd0;
    end else if (((exitcond_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        iy_reg_119 <= i_fu_320_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        s_1_reg_142 <= s_2_fu_529_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_1_reg_142 <= s12_fu_258_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv_next2_reg_540 <= indvars_iv_next2_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ix_8_reg_555 <= ix_8_fu_225_p2;
        tmp_reg_545 <= tmp_fu_216_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ix_9_reg_573 <= ix_9_fu_276_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_96_reg_609 <= {{mul_fu_405_p2[11:8]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_98_reg_599 <= {{mul4_fu_335_p2[11:8]}};
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        X_address0 = tmp_71_fu_472_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        X_address0 = tmp_s_fu_220_p1;
    end else begin
        X_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state21))) begin
        X_ce0 = 1'b1;
    end else begin
        X_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        Y_ce0 = 1'b1;
    end else begin
        Y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        Y_we0 = 1'b1;
    end else begin
        Y_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond1_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond1_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_67_fu_283_p2 == 1'd1) & (ap_phi_mux_b3_phi_fu_178_p4 == 1'd0) & (exitcond_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((ap_phi_mux_b3_phi_fu_178_p4 == 1'd1) & (exitcond_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        grp_fu_199_ap_start = 1'b1;
    end else begin
        grp_fu_199_ap_start = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_fu_204_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_270_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((tmp_67_fu_283_p2 == 1'd0) & (ap_phi_mux_b3_phi_fu_178_p4 == 1'd0) & (exitcond_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else if (((tmp_67_fu_283_p2 == 1'd1) & (ap_phi_mux_b3_phi_fu_178_p4 == 1'd0) & (exitcond_fu_270_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Y_address0 = tmp_64_fu_315_p1;

assign Y_d0 = s_1_reg_142;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_phi_mux_b3_phi_fu_178_p4 = b3_reg_173;

assign exitcond1_fu_204_p2 = ((iy_reg_119 == 3'd6) ? 1'b1 : 1'b0);

assign exitcond_fu_270_p2 = ((ix_1_cast_cast_fu_266_p1 == indvars_iv_reg_107) ? 1'b1 : 1'b0);

assign grp_fu_199_p0 = (ix_1_reg_164 + 5'd1);

assign grp_fu_199_p1 = 5'd5;

assign i_fu_320_p2 = (iy_reg_119 + 3'd1);

assign indvars_iv_next2_fu_210_p2 = (indvars_iv1_reg_96 + 3'd1);

assign indvars_iv_next_fu_326_p2 = (indvars_iv_reg_107 + 6'd5);

assign ix_1_cast_cast_fu_266_p1 = ix_1_reg_164;

assign ix_8_fu_225_p2 = (6'd5 + ix_reg_131);

assign ix_9_fu_276_p2 = (ix_1_reg_164 + 5'd1);

assign ixstart_14_fu_462_p2 = (tmp_143_cast_fu_458_p1 + tmp_66_fu_449_p2);

assign ixstart_15_fu_392_p2 = (tmp_146_cast_fu_388_p1 + tmp_69_fu_379_p2);

assign ixstart_16_fu_289_p2 = (ixstart_reg_153 + 32'd6);

assign ixstart_17_fu_301_p2 = ($signed(ixstart_reg_153) + $signed(32'd4294967273));

assign ixstart_20_cast_fu_468_p1 = $signed(ixstart_14_fu_462_p2);

assign ixstart_21_cast_fu_398_p1 = $signed(ixstart_15_fu_392_p2);

assign ixstart_cast_fu_231_p2 = (5'd1 + tmp_reg_545);

assign mul4_fu_335_p1 = mul4_fu_335_p10;

assign mul4_fu_335_p10 = ix_9_reg_573;

assign mul4_fu_335_p2 = (12'd52 * mul4_fu_335_p1);

assign mul_fu_405_p1 = mul_fu_405_p10;

assign mul_fu_405_p10 = ix_9_reg_573;

assign mul_fu_405_p2 = (12'd52 * mul_fu_405_p1);

assign p_s_fu_307_p3 = ((tmp_70_fu_295_p2[0:0] === 1'b1) ? ixstart_17_fu_301_p2 : ixstart_16_fu_289_p2);

assign p_shl10_cast_fu_363_p1 = p_shl10_fu_355_p3;

assign p_shl10_fu_355_p3 = {{tmp_97_fu_351_p1}, {3'd0}};

assign p_shl11_cast_fu_375_p1 = p_shl11_fu_367_p3;

assign p_shl11_fu_367_p3 = {{tmp_97_fu_351_p1}, {1'd0}};

assign p_shl8_cast_fu_445_p1 = p_shl8_fu_437_p3;

assign p_shl8_fu_437_p3 = {{tmp_95_fu_421_p1}, {1'd0}};

assign p_shl_cast_fu_433_p1 = p_shl_fu_425_p3;

assign p_shl_fu_425_p3 = {{tmp_95_fu_421_p1}, {3'd0}};

assign s12_fu_258_p3 = ((tmp_94_fu_240_p3[0:0] === 1'b1) ? s_4_fu_248_p2 : s_16_cast_fu_254_p1);

assign s_11_fu_236_p1 = X_q0[36:0];

assign s_13_fu_493_p2 = (s_1_reg_142 + X_q0);

assign s_14_fu_519_p2 = (s_13_fu_493_p2 | 64'd18446743936270598144);

assign s_16_cast_fu_254_p1 = s_11_fu_236_p1;

assign s_18_cast_fu_505_p2 = (tmp_100_fu_481_p1 + tmp_99_fu_477_p1);

assign s_20_cast_fu_525_p1 = s_5_fu_499_p2;

assign s_2_fu_529_p3 = ((tmp_103_fu_511_p3[0:0] === 1'b1) ? s_14_fu_519_p2 : s_20_cast_fu_525_p1);

assign s_4_fu_248_p2 = (64'd18446743936270598144 | X_q0);

assign s_5_fu_499_p2 = (tmp_102_fu_489_p1 + tmp_101_fu_485_p1);

assign tmp_100_fu_481_p1 = X_q0[37:0];

assign tmp_101_fu_485_p1 = s_1_reg_142[36:0];

assign tmp_102_fu_489_p1 = X_q0[36:0];

assign tmp_103_fu_511_p3 = s_18_cast_fu_505_p2[32'd37];

assign tmp_143_cast_fu_458_p1 = $unsigned(tmp_52_fu_455_p1);

assign tmp_146_cast_fu_388_p1 = $unsigned(tmp_53_fu_385_p1);

assign tmp_52_fu_455_p1 = $signed(tmp_96_reg_609);

assign tmp_53_fu_385_p1 = $signed(tmp_98_reg_599);

assign tmp_64_fu_315_p1 = iy_reg_119;

assign tmp_66_fu_449_p2 = (p_shl_cast_fu_433_p1 - p_shl8_cast_fu_445_p1);

assign tmp_67_fu_283_p2 = (($signed(ixstart_reg_153) > $signed(32'd2147483641)) ? 1'b1 : 1'b0);

assign tmp_69_fu_379_p2 = (p_shl10_cast_fu_363_p1 - p_shl11_cast_fu_375_p1);

assign tmp_70_fu_295_p2 = (($signed(ixstart_16_fu_289_p2) > $signed(32'd29)) ? 1'b1 : 1'b0);

assign tmp_71_fu_472_p1 = ixstart_4_reg_186;

assign tmp_94_fu_240_p3 = X_q0[32'd37];

assign tmp_95_fu_421_p1 = grp_fu_199_p2[2:0];

assign tmp_97_fu_351_p1 = grp_fu_199_p2[2:0];

assign tmp_99_fu_477_p1 = s_1_reg_142[37:0];

assign tmp_fu_216_p1 = ix_reg_131[4:0];

assign tmp_s_fu_220_p1 = indvars_iv1_reg_96;

endmodule //d_sum