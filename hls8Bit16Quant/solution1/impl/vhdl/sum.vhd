-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sum is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    X_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    X_ce0 : OUT STD_LOGIC;
    X_q0 : IN STD_LOGIC_VECTOR (0 downto 0);
    Y_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    Y_ce0 : OUT STD_LOGIC;
    Y_we0 : OUT STD_LOGIC;
    Y_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of sum is 
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
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv5_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv6_5 : STD_LOGIC_VECTOR (5 downto 0) := "000101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_7FFFFFFA : STD_LOGIC_VECTOR (31 downto 0) := "01111111111111111111111111111010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_FFFFFFED : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111101101";
    constant ap_const_lv12_34 : STD_LOGIC_VECTOR (11 downto 0) := "000000110100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_FC000000 : STD_LOGIC_VECTOR (31 downto 0) := "11111100000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvars_iv_next2_fu_206_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvars_iv_next2_reg_466 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_212_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_reg_471 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond1_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ix_2_fu_221_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ix_2_reg_481 : STD_LOGIC_VECTOR (5 downto 0);
    signal ixstart_cast_fu_227_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ixstart_5_cast_fu_232_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ix_3_fu_242_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ix_3_reg_499 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal exitcond_fu_236_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_fu_273_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_b0_phi_fu_174_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_286_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvars_iv_next_fu_292_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_15_cast_reg_525 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal i19_2_cast_fu_342_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_11_cast_reg_535 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state19 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state19 : signal is "none";
    signal i19_1_cast_fu_390_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state20 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state20 : signal is "none";
    signal ap_CS_fsm_state21 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state21 : signal is "none";
    signal ixstart_2_fu_455_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal indvars_iv1_reg_92 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvars_iv_reg_103 : STD_LOGIC_VECTOR (4 downto 0);
    signal iy_reg_115 : STD_LOGIC_VECTOR (2 downto 0);
    signal ix_reg_127 : STD_LOGIC_VECTOR (5 downto 0);
    signal i1_reg_138 : STD_LOGIC_VECTOR (31 downto 0);
    signal i19_4_reg_182 : STD_LOGIC_VECTOR (31 downto 0);
    signal ixstart_1_reg_149 : STD_LOGIC_VECTOR (31 downto 0);
    signal ix_1_reg_160 : STD_LOGIC_VECTOR (4 downto 0);
    signal b0_reg_169 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_216_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_281_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_394_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_195_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_195_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal i19_2_fu_255_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_fu_261_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i19_3_fu_267_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul4_fu_301_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul4_fu_301_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_195_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_8_fu_317_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp2_fu_327_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_11_fu_321_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp2_cast_fu_332_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal i19_1_fu_336_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul_fu_349_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul_fu_349_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_1_fu_365_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp1_fu_375_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_369_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp1_cast_fu_380_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal i19_fu_384_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal extLd_fu_399_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_12_fu_415_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_14_fu_411_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_10_fu_407_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal tmp_13_fu_403_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal ixstart_6_cast_fu_431_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal ixstart_3_fu_419_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ixstart_5_fu_425_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_15_fu_437_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ixstart_4_fu_445_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ixstart_8_cast_fu_451_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_195_ap_start : STD_LOGIC;
    signal grp_fu_195_ap_done : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (21 downto 0);
    signal mul4_fu_301_p10 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_fu_349_p10 : STD_LOGIC_VECTOR (11 downto 0);

    component lenetSynthMatlab_bkb IS
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
        dout : OUT STD_LOGIC_VECTOR (4 downto 0) );
    end component;



begin
    lenetSynthMatlab_bkb_U1 : component lenetSynthMatlab_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 9,
        din0_WIDTH => 5,
        din1_WIDTH => 4,
        dout_WIDTH => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_195_ap_start,
        done => grp_fu_195_ap_done,
        din0 => grp_fu_195_p0,
        din1 => grp_fu_195_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_195_p2);





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


    b0_reg_169_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                b0_reg_169 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                b0_reg_169 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    i19_4_reg_182_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_fu_249_p2 = ap_const_lv1_0) and (ap_phi_mux_b0_phi_fu_174_p4 = ap_const_lv1_0) and (exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i19_4_reg_182 <= p_s_fu_273_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                i19_4_reg_182 <= i19_2_cast_fu_342_p1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state20)) then 
                i19_4_reg_182 <= i19_1_cast_fu_390_p1;
            end if; 
        end if;
    end process;

    i1_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                i1_reg_138 <= i19_4_reg_182;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i1_reg_138 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    indvars_iv1_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvars_iv1_reg_92 <= ap_const_lv3_0;
            elsif (((exitcond_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                indvars_iv1_reg_92 <= indvars_iv_next2_reg_466;
            end if; 
        end if;
    end process;

    indvars_iv_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvars_iv_reg_103 <= ap_const_lv5_4;
            elsif (((exitcond_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                indvars_iv_reg_103 <= indvars_iv_next_fu_292_p2;
            end if; 
        end if;
    end process;

    ix_1_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                ix_1_reg_160 <= ix_3_reg_499;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                ix_1_reg_160 <= ixstart_cast_fu_227_p2;
            end if; 
        end if;
    end process;

    ix_reg_127_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                ix_reg_127 <= ap_const_lv6_3F;
            elsif (((exitcond_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                ix_reg_127 <= ix_2_reg_481;
            end if; 
        end if;
    end process;

    ixstart_1_reg_149_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
                ixstart_1_reg_149 <= ixstart_2_fu_455_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                ixstart_1_reg_149 <= ixstart_5_cast_fu_232_p1;
            end if; 
        end if;
    end process;

    iy_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                iy_reg_115 <= ap_const_lv3_0;
            elsif (((exitcond_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                iy_reg_115 <= i_fu_286_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                indvars_iv_next2_reg_466 <= indvars_iv_next2_fu_206_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_200_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                ix_2_reg_481 <= ix_2_fu_221_p2;
                tmp_reg_471 <= tmp_fu_212_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                ix_3_reg_499 <= ix_3_fu_242_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state19)) then
                tmp_11_cast_reg_535 <= mul_fu_349_p2(11 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                tmp_15_cast_reg_525 <= mul4_fu_301_p2(11 downto 8);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_200_p2, ap_CS_fsm_state4, exitcond_fu_236_p2, ap_phi_mux_b0_phi_fu_174_p4, tmp_3_fu_249_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond1_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((exitcond_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((tmp_3_fu_249_p2 = ap_const_lv1_0) and (ap_phi_mux_b0_phi_fu_174_p4 = ap_const_lv1_0) and (exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state21;
                elsif (((tmp_3_fu_249_p2 = ap_const_lv1_1) and (ap_phi_mux_b0_phi_fu_174_p4 = ap_const_lv1_0) and (exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
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

    X_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state21, tmp_4_fu_216_p1, tmp_5_fu_394_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state21)) then 
            X_address0 <= tmp_5_fu_394_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            X_address0 <= tmp_4_fu_216_p1(5 - 1 downto 0);
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

    Y_address0 <= tmp_s_fu_281_p1(3 - 1 downto 0);

    Y_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            Y_ce0 <= ap_const_logic_1;
        else 
            Y_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Y_d0 <= ixstart_1_reg_149;

    Y_we0_assign_proc : process(ap_CS_fsm_state4, exitcond_fu_236_p2)
    begin
        if (((exitcond_fu_236_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_200_p2)
    begin
        if ((((exitcond1_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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

    ap_phi_mux_b0_phi_fu_174_p4 <= b0_reg_169;

    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_200_p2)
    begin
        if (((exitcond1_fu_200_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_200_p2 <= "1" when (iy_reg_115 = ap_const_lv3_5) else "0";
    exitcond_fu_236_p2 <= "1" when (ix_1_reg_160 = indvars_iv_reg_103) else "0";
    extLd_fu_399_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(X_q0),32));

    grp_fu_195_ap_start_assign_proc : process(ap_CS_fsm_state4, exitcond_fu_236_p2, ap_phi_mux_b0_phi_fu_174_p4, tmp_3_fu_249_p2)
    begin
        if ((((tmp_3_fu_249_p2 = ap_const_lv1_1) and (ap_phi_mux_b0_phi_fu_174_p4 = ap_const_lv1_0) and (exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_phi_mux_b0_phi_fu_174_p4 = ap_const_lv1_1) and (exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            grp_fu_195_ap_start <= ap_const_logic_1;
        else 
            grp_fu_195_ap_start <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_195_p0 <= std_logic_vector(unsigned(ix_1_reg_160) + unsigned(ap_const_lv5_1));
    grp_fu_195_p1 <= ap_const_lv5_5(4 - 1 downto 0);
    i19_1_cast_fu_390_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i19_fu_384_p2),32));
    i19_1_fu_336_p2 <= std_logic_vector(unsigned(tmp_11_fu_321_p2) + unsigned(tmp2_cast_fu_332_p1));
    i19_2_cast_fu_342_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i19_1_fu_336_p2),32));
    i19_2_fu_255_p2 <= std_logic_vector(unsigned(i1_reg_138) + unsigned(ap_const_lv32_5));
    i19_3_fu_267_p2 <= std_logic_vector(unsigned(i1_reg_138) + unsigned(ap_const_lv32_FFFFFFED));
    i19_fu_384_p2 <= std_logic_vector(unsigned(tmp_2_fu_369_p2) + unsigned(tmp1_cast_fu_380_p1));
    i_fu_286_p2 <= std_logic_vector(unsigned(iy_reg_115) + unsigned(ap_const_lv3_1));
    indvars_iv_next2_fu_206_p2 <= std_logic_vector(unsigned(indvars_iv1_reg_92) + unsigned(ap_const_lv3_1));
    indvars_iv_next_fu_292_p2 <= std_logic_vector(unsigned(indvars_iv_reg_103) + unsigned(ap_const_lv5_5));
    ix_2_fu_221_p2 <= std_logic_vector(unsigned(ap_const_lv6_5) + unsigned(ix_reg_127));
    ix_3_fu_242_p2 <= std_logic_vector(unsigned(ix_1_reg_160) + unsigned(ap_const_lv5_1));
    ixstart_2_fu_455_p3 <= 
        ixstart_4_fu_445_p2 when (tmp_15_fu_437_p3(0) = '1') else 
        ixstart_8_cast_fu_451_p1;
    ixstart_3_fu_419_p2 <= std_logic_vector(unsigned(ixstart_1_reg_149) + unsigned(extLd_fu_399_p1));
    ixstart_4_fu_445_p2 <= (ixstart_3_fu_419_p2 or ap_const_lv32_FC000000);
    ixstart_5_cast_fu_232_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(X_q0),32));
    ixstart_5_fu_425_p2 <= std_logic_vector(unsigned(tmp_12_fu_415_p1) + unsigned(tmp_14_fu_411_p1));
    ixstart_6_cast_fu_431_p2 <= std_logic_vector(unsigned(tmp_10_fu_407_p1) + unsigned(tmp_13_fu_403_p1));
    ixstart_8_cast_fu_451_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ixstart_5_fu_425_p2),32));
    ixstart_cast_fu_227_p2 <= std_logic_vector(unsigned(ap_const_lv5_1) + unsigned(tmp_reg_471));
    mul4_fu_301_p1 <= mul4_fu_301_p10(5 - 1 downto 0);
    mul4_fu_301_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ix_3_reg_499),12));
    mul4_fu_301_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv12_34) * unsigned(mul4_fu_301_p1), 12));
    mul_fu_349_p1 <= mul_fu_349_p10(5 - 1 downto 0);
    mul_fu_349_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ix_3_reg_499),12));
    mul_fu_349_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv12_34) * unsigned(mul_fu_349_p1), 12));
    p_s_fu_273_p3 <= 
        i19_3_fu_267_p2 when (tmp_9_fu_261_p2(0) = '1') else 
        i19_2_fu_255_p2;
    tmp1_cast_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_fu_375_p2),5));
    tmp1_fu_375_p2 <= std_logic_vector(unsigned(tmp_11_cast_reg_535) + unsigned(tmp_1_fu_365_p1));
    tmp2_cast_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp2_fu_327_p2),5));
    tmp2_fu_327_p2 <= std_logic_vector(unsigned(tmp_15_cast_reg_525) + unsigned(tmp_8_fu_317_p1));
    tmp_10_fu_407_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(X_q0),27));
    tmp_11_fu_321_p2 <= std_logic_vector(shift_left(unsigned(grp_fu_195_p2),to_integer(unsigned('0' & ap_const_lv5_2(5-1 downto 0)))));
    tmp_12_fu_415_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(X_q0),26));
    tmp_13_fu_403_p1 <= ixstart_1_reg_149(27 - 1 downto 0);
    tmp_14_fu_411_p1 <= ixstart_1_reg_149(26 - 1 downto 0);
    tmp_15_fu_437_p3 <= ixstart_6_cast_fu_431_p2(26 downto 26);
    tmp_1_fu_365_p1 <= grp_fu_195_p2(4 - 1 downto 0);
    tmp_2_fu_369_p2 <= std_logic_vector(shift_left(unsigned(grp_fu_195_p2),to_integer(unsigned('0' & ap_const_lv5_2(5-1 downto 0)))));
    tmp_3_fu_249_p2 <= "1" when (signed(i1_reg_138) > signed(ap_const_lv32_7FFFFFFA)) else "0";
    tmp_4_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv1_reg_92),64));
        tmp_5_fu_394_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(i19_4_reg_182),64));

    tmp_8_fu_317_p1 <= grp_fu_195_p2(4 - 1 downto 0);
    tmp_9_fu_261_p2 <= "1" when (signed(i19_2_fu_255_p2) > signed(ap_const_lv32_18)) else "0";
    tmp_fu_212_p1 <= ix_reg_127(5 - 1 downto 0);
    tmp_s_fu_281_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(iy_reg_115),64));
end behav;