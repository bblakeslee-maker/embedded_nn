-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity d_sum is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    X_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    X_ce0 : OUT STD_LOGIC;
    X_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    Y_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    Y_ce0 : OUT STD_LOGIC;
    Y_we0 : OUT STD_LOGIC;
    Y_d0 : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of d_sum is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (21 downto 0) := "0000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (21 downto 0) := "0000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (21 downto 0) := "0000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (21 downto 0) := "0000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (21 downto 0) := "0000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (21 downto 0) := "0000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (21 downto 0) := "0001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (21 downto 0) := "0010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (21 downto 0) := "0100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (21 downto 0) := "1000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv5_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv64_FFFFFFE000000000 : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111110000000000000000000000000000000000000";
    constant ap_const_lv32_7FFFFFF9 : STD_LOGIC_VECTOR (31 downto 0) := "01111111111111111111111111111001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_FFFFFFE9 : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111101001";
    constant ap_const_lv12_34 : STD_LOGIC_VECTOR (11 downto 0) := "000000110100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvars_iv_next2_fu_210_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvars_iv_next2_reg_540 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_216_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_reg_545 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond1_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ix_8_fu_225_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ix_8_reg_555 : STD_LOGIC_VECTOR (5 downto 0);
    signal ixstart_cast_fu_231_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal s12_fu_258_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ix_9_fu_276_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ix_9_reg_573 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond_fu_270_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_fu_307_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_b3_phi_fu_178_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_67_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_320_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvars_iv_next_fu_326_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_98_reg_599 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ixstart_21_cast_fu_398_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_96_reg_609 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal ixstart_20_cast_fu_468_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state20 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state20 : signal is "none";
    signal ap_CS_fsm_state21 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state21 : signal is "none";
    signal s_2_fu_529_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal indvars_iv1_reg_96 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvars_iv_reg_107 : STD_LOGIC_VECTOR (5 downto 0);
    signal iy_reg_119 : STD_LOGIC_VECTOR (2 downto 0);
    signal ix_reg_131 : STD_LOGIC_VECTOR (5 downto 0);
    signal s_1_reg_142 : STD_LOGIC_VECTOR (63 downto 0);
    signal ixstart_reg_153 : STD_LOGIC_VECTOR (31 downto 0);
    signal ixstart_4_reg_186 : STD_LOGIC_VECTOR (31 downto 0);
    signal ix_1_reg_164 : STD_LOGIC_VECTOR (4 downto 0);
    signal b3_reg_173 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_220_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_64_fu_315_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_71_fu_472_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_199_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_199_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal s_11_fu_236_p1 : STD_LOGIC_VECTOR (36 downto 0);
    signal tmp_94_fu_240_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal s_4_fu_248_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_16_cast_fu_254_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ix_1_cast_cast_fu_266_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ixstart_16_fu_289_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_70_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ixstart_17_fu_301_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul4_fu_335_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul4_fu_335_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_199_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_97_fu_351_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_shl10_fu_355_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl11_fu_367_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl10_cast_fu_363_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl11_cast_fu_375_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_53_fu_385_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_146_cast_fu_388_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_69_fu_379_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ixstart_15_fu_392_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal mul_fu_405_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul_fu_405_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_95_fu_421_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_shl_fu_425_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl8_fu_437_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_cast_fu_433_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl8_cast_fu_445_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_52_fu_455_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_143_cast_fu_458_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_66_fu_449_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ixstart_14_fu_462_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_102_fu_489_p1 : STD_LOGIC_VECTOR (36 downto 0);
    signal tmp_101_fu_485_p1 : STD_LOGIC_VECTOR (36 downto 0);
    signal tmp_100_fu_481_p1 : STD_LOGIC_VECTOR (37 downto 0);
    signal tmp_99_fu_477_p1 : STD_LOGIC_VECTOR (37 downto 0);
    signal s_18_cast_fu_505_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal s_13_fu_493_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_5_fu_499_p2 : STD_LOGIC_VECTOR (36 downto 0);
    signal tmp_103_fu_511_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal s_14_fu_519_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal s_20_cast_fu_525_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_199_ap_start : STD_LOGIC;
    signal grp_fu_199_ap_done : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (21 downto 0);
    signal mul4_fu_335_p10 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_fu_405_p10 : STD_LOGIC_VECTOR (11 downto 0);

    component lenetSynthMatlab_dEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (2 downto 0) );
    end component;



begin
    lenetSynthMatlab_dEe_U17 : component lenetSynthMatlab_dEe
    generic map (
        ID => 1,
        NUM_STAGE => 9,
        din0_WIDTH => 5,
        din1_WIDTH => 4,
        dout_WIDTH => 3)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_199_ap_start,
        done => grp_fu_199_ap_done,
        din0 => grp_fu_199_p0,
        din1 => grp_fu_199_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_199_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    b3_reg_173_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                b3_reg_173 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                b3_reg_173 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    indvars_iv1_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvars_iv1_reg_96 <= ap_const_lv3_0;
            elsif (((exitcond_fu_270_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                indvars_iv1_reg_96 <= indvars_iv_next2_reg_540;
            end if; 
        end if;
    end process;

    indvars_iv_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvars_iv_reg_107 <= ap_const_lv6_4;
            elsif (((exitcond_fu_270_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                indvars_iv_reg_107 <= indvars_iv_next_fu_326_p2;
            end if; 
        end if;
    end process;

    ix_1_reg_164_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                ix_1_reg_164 <= ix_9_reg_573;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                ix_1_reg_164 <= ixstart_cast_fu_231_p2;
            end if; 
        end if;
    end process;

    ix_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ix_reg_131 <= ap_const_lv6_3F;
            elsif (((exitcond_fu_270_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                ix_reg_131 <= ix_8_reg_555;
            end if; 
        end if;
    end process;

    ixstart_4_reg_186_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_67_fu_283_p2 = ap_const_lv1_0) and (ap_phi_mux_b3_phi_fu_178_p4 = ap_const_lv1_0) and (exitcond_fu_270_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                ixstart_4_reg_186 <= p_s_fu_307_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                ixstart_4_reg_186 <= ixstart_21_cast_fu_398_p1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state20)) then 
                ixstart_4_reg_186 <= ixstart_20_cast_fu_468_p1;
            end if; 
        end if;
    end process;

    ixstart_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                ixstart_reg_153 <= ixstart_4_reg_186;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                ixstart_reg_153 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    iy_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                iy_reg_119 <= ap_const_lv3_0;
            elsif (((exitcond_fu_270_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                iy_reg_119 <= i_fu_320_p2;
            end if; 
        end if;
    end process;

    s_1_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                s_1_reg_142 <= s_2_fu_529_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                s_1_reg_142 <= s12_fu_258_p3;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                indvars_iv_next2_reg_540 <= indvars_iv_next2_fu_210_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_204_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                ix_8_reg_555 <= ix_8_fu_225_p2;
                tmp_reg_545 <= tmp_fu_216_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_270_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                ix_9_reg_573 <= ix_9_fu_276_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state19)) then
                tmp_96_reg_609 <= mul_fu_405_p2(11 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                tmp_98_reg_599 <= mul4_fu_335_p2(11 downto 8);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_204_p2, ap_CS_fsm_state4, exitcond_fu_270_p2, ap_phi_mux_b3_phi_fu_178_p4, tmp_67_fu_283_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond1_fu_204_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((exitcond_fu_270_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((tmp_67_fu_283_p2 = ap_const_lv1_0) and (ap_phi_mux_b3_phi_fu_178_p4 = ap_const_lv1_0) and (exitcond_fu_270_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state21;
                elsif (((tmp_67_fu_283_p2 = ap_const_lv1_1) and (ap_phi_mux_b3_phi_fu_178_p4 = ap_const_lv1_0) and (exitcond_fu_270_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;

    X_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state21, tmp_s_fu_220_p1, tmp_71_fu_472_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state21)) then 
            X_address0 <= tmp_71_fu_472_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            X_address0 <= tmp_s_fu_220_p1(5 - 1 downto 0);
        else 
            X_address0 <= "XXXXX";
        end if; 
    end process;


    X_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state21)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state21))) then 
            X_ce0 <= ap_const_logic_1;
        else 
            X_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Y_address0 <= tmp_64_fu_315_p1(3 - 1 downto 0);

    Y_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            Y_ce0 <= ap_const_logic_1;
        else 
            Y_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Y_d0 <= s_1_reg_142;

    Y_we0_assign_proc : process(ap_CS_fsm_state4, exitcond_fu_270_p2)
    begin
        if (((exitcond_fu_270_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            Y_we0 <= ap_const_logic_1;
        else 
            Y_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state19 <= ap_CS_fsm(18);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state20 <= ap_CS_fsm(19);
    ap_CS_fsm_state21 <= ap_CS_fsm(20);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_204_p2)
    begin
        if ((((exitcond1_fu_204_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_b3_phi_fu_178_p4 <= b3_reg_173;

    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_204_p2)
    begin
        if (((exitcond1_fu_204_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_204_p2 <= "1" when (iy_reg_119 = ap_const_lv3_6) else "0";
    exitcond_fu_270_p2 <= "1" when (ix_1_cast_cast_fu_266_p1 = indvars_iv_reg_107) else "0";

    grp_fu_199_ap_start_assign_proc : process(ap_CS_fsm_state4, exitcond_fu_270_p2, ap_phi_mux_b3_phi_fu_178_p4, tmp_67_fu_283_p2)
    begin
        if ((((tmp_67_fu_283_p2 = ap_const_lv1_1) and (ap_phi_mux_b3_phi_fu_178_p4 = ap_const_lv1_0) and (exitcond_fu_270_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_phi_mux_b3_phi_fu_178_p4 = ap_const_lv1_1) and (exitcond_fu_270_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            grp_fu_199_ap_start <= ap_const_logic_1;
        else 
            grp_fu_199_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_199_p0 <= std_logic_vector(unsigned(ix_1_reg_164) + unsigned(ap_const_lv5_1));
    grp_fu_199_p1 <= ap_const_lv5_5(4 - 1 downto 0);
    i_fu_320_p2 <= std_logic_vector(unsigned(iy_reg_119) + unsigned(ap_const_lv3_1));
    indvars_iv_next2_fu_210_p2 <= std_logic_vector(unsigned(indvars_iv1_reg_96) + unsigned(ap_const_lv3_1));
    indvars_iv_next_fu_326_p2 <= std_logic_vector(unsigned(indvars_iv_reg_107) + unsigned(ap_const_lv6_5));
    ix_1_cast_cast_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ix_1_reg_164),6));
    ix_8_fu_225_p2 <= std_logic_vector(unsigned(ap_const_lv6_5) + unsigned(ix_reg_131));
    ix_9_fu_276_p2 <= std_logic_vector(unsigned(ix_1_reg_164) + unsigned(ap_const_lv5_1));
    ixstart_14_fu_462_p2 <= std_logic_vector(unsigned(tmp_143_cast_fu_458_p1) + unsigned(tmp_66_fu_449_p2));
    ixstart_15_fu_392_p2 <= std_logic_vector(unsigned(tmp_146_cast_fu_388_p1) + unsigned(tmp_69_fu_379_p2));
    ixstart_16_fu_289_p2 <= std_logic_vector(unsigned(ixstart_reg_153) + unsigned(ap_const_lv32_6));
    ixstart_17_fu_301_p2 <= std_logic_vector(unsigned(ixstart_reg_153) + unsigned(ap_const_lv32_FFFFFFE9));
        ixstart_20_cast_fu_468_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ixstart_14_fu_462_p2),32));

        ixstart_21_cast_fu_398_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ixstart_15_fu_392_p2),32));

    ixstart_cast_fu_231_p2 <= std_logic_vector(unsigned(ap_const_lv5_1) + unsigned(tmp_reg_545));
    mul4_fu_335_p1 <= mul4_fu_335_p10(5 - 1 downto 0);
    mul4_fu_335_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ix_9_reg_573),12));
    mul4_fu_335_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv12_34) * unsigned(mul4_fu_335_p1), 12));
    mul_fu_405_p1 <= mul_fu_405_p10(5 - 1 downto 0);
    mul_fu_405_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ix_9_reg_573),12));
    mul_fu_405_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv12_34) * unsigned(mul_fu_405_p1), 12));
    p_s_fu_307_p3 <= 
        ixstart_17_fu_301_p2 when (tmp_70_fu_295_p2(0) = '1') else 
        ixstart_16_fu_289_p2;
    p_shl10_cast_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl10_fu_355_p3),7));
    p_shl10_fu_355_p3 <= (tmp_97_fu_351_p1 & ap_const_lv3_0);
    p_shl11_cast_fu_375_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl11_fu_367_p3),7));
    p_shl11_fu_367_p3 <= (tmp_97_fu_351_p1 & ap_const_lv1_0);
    p_shl8_cast_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl8_fu_437_p3),7));
    p_shl8_fu_437_p3 <= (tmp_95_fu_421_p1 & ap_const_lv1_0);
    p_shl_cast_fu_433_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_fu_425_p3),7));
    p_shl_fu_425_p3 <= (tmp_95_fu_421_p1 & ap_const_lv3_0);
    s12_fu_258_p3 <= 
        s_4_fu_248_p2 when (tmp_94_fu_240_p3(0) = '1') else 
        s_16_cast_fu_254_p1;
    s_11_fu_236_p1 <= X_q0(37 - 1 downto 0);
    s_13_fu_493_p2 <= std_logic_vector(unsigned(s_1_reg_142) + unsigned(X_q0));
    s_14_fu_519_p2 <= (s_13_fu_493_p2 or ap_const_lv64_FFFFFFE000000000);
    s_16_cast_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(s_11_fu_236_p1),64));
    s_18_cast_fu_505_p2 <= std_logic_vector(unsigned(tmp_100_fu_481_p1) + unsigned(tmp_99_fu_477_p1));
    s_20_cast_fu_525_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(s_5_fu_499_p2),64));
    s_2_fu_529_p3 <= 
        s_14_fu_519_p2 when (tmp_103_fu_511_p3(0) = '1') else 
        s_20_cast_fu_525_p1;
    s_4_fu_248_p2 <= (ap_const_lv64_FFFFFFE000000000 or X_q0);
    s_5_fu_499_p2 <= std_logic_vector(unsigned(tmp_102_fu_489_p1) + unsigned(tmp_101_fu_485_p1));
    tmp_100_fu_481_p1 <= X_q0(38 - 1 downto 0);
    tmp_101_fu_485_p1 <= s_1_reg_142(37 - 1 downto 0);
    tmp_102_fu_489_p1 <= X_q0(37 - 1 downto 0);
    tmp_103_fu_511_p3 <= s_18_cast_fu_505_p2(37 downto 37);
    tmp_143_cast_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_52_fu_455_p1),7));
    tmp_146_cast_fu_388_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_53_fu_385_p1),7));
        tmp_52_fu_455_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_96_reg_609),5));

        tmp_53_fu_385_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_98_reg_599),5));

    tmp_64_fu_315_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(iy_reg_119),64));
    tmp_66_fu_449_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_433_p1) - unsigned(p_shl8_cast_fu_445_p1));
    tmp_67_fu_283_p2 <= "1" when (signed(ixstart_reg_153) > signed(ap_const_lv32_7FFFFFF9)) else "0";
    tmp_69_fu_379_p2 <= std_logic_vector(unsigned(p_shl10_cast_fu_363_p1) - unsigned(p_shl11_cast_fu_375_p1));
    tmp_70_fu_295_p2 <= "1" when (signed(ixstart_16_fu_289_p2) > signed(ap_const_lv32_1D)) else "0";
        tmp_71_fu_472_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ixstart_4_reg_186),64));

    tmp_94_fu_240_p3 <= X_q0(37 downto 37);
    tmp_95_fu_421_p1 <= grp_fu_199_p2(3 - 1 downto 0);
    tmp_97_fu_351_p1 <= grp_fu_199_p2(3 - 1 downto 0);
    tmp_99_fu_477_p1 <= s_1_reg_142(38 - 1 downto 0);
    tmp_fu_216_p1 <= ix_reg_131(5 - 1 downto 0);
    tmp_s_fu_220_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv1_reg_96),64));
end behav;
