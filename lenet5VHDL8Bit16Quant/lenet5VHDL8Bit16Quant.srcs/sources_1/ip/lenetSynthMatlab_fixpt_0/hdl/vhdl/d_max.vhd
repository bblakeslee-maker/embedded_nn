-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity d_max is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    b_y0_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    b_y0_ce0 : OUT STD_LOGIC;
    b_y0_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    maxval_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    maxval_ce0 : OUT STD_LOGIC;
    maxval_we0 : OUT STD_LOGIC;
    maxval_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of d_max is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal k_3_fu_99_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_3_reg_202 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp1_fu_125_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp1_reg_207 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond2_fu_93_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_k_1_fu_137_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal b_k_1_reg_215 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_s_fu_143_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_reg_220 : STD_LOGIC_VECTOR (7 downto 0);
    signal exitcond1_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_k_1_fu_161_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal c_k_1_reg_228 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_73_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_73_reg_233 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_y0_load_reg_243 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal k_reg_60 : STD_LOGIC_VECTOR (3 downto 0);
    signal b_k_reg_71 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_k_reg_82 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal p_shl7_fu_113_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl7_cast_fu_121_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl_fu_105_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal c_k_cast3_fu_151_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp2_fu_167_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp2_cast_fu_172_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_72_fu_176_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_74_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


begin




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


    b_k_reg_71_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                b_k_reg_71 <= b_k_1_reg_215;
            elsif (((exitcond2_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                b_k_reg_71 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    c_k_reg_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_131_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                c_k_reg_82 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                c_k_reg_82 <= c_k_1_reg_228;
            end if; 
        end if;
    end process;

    k_reg_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_131_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                k_reg_60 <= k_3_reg_202;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                k_reg_60 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                b_k_1_reg_215 <= b_k_1_fu_137_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                b_y0_load_reg_243 <= b_y0_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                c_k_1_reg_228 <= c_k_1_fu_161_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                k_3_reg_202 <= k_3_fu_99_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp1_reg_207(10 downto 5) <= tmp1_fu_125_p2(10 downto 5);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    tmp_73_reg_233(10 downto 0) <= tmp_73_fu_181_p1(10 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_131_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    tmp_s_reg_220(7 downto 4) <= tmp_s_fu_143_p3(7 downto 4);
            end if;
        end if;
    end process;
    tmp1_reg_207(4 downto 0) <= "00000";
    tmp_s_reg_220(3 downto 0) <= "0000";
    tmp_73_reg_233(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_93_p2, ap_CS_fsm_state3, exitcond1_fu_131_p2, ap_CS_fsm_state4, exitcond_fu_155_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond2_fu_93_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond1_fu_131_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond_fu_155_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_93_p2)
    begin
        if ((((exitcond2_fu_93_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_fu_93_p2)
    begin
        if (((exitcond2_fu_93_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    b_k_1_fu_137_p2 <= std_logic_vector(unsigned(b_k_reg_71) + unsigned(ap_const_lv4_1));
    b_y0_address0 <= tmp_73_fu_181_p1(11 - 1 downto 0);

    b_y0_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            b_y0_ce0 <= ap_const_logic_1;
        else 
            b_y0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    c_k_1_fu_161_p2 <= std_logic_vector(unsigned(c_k_reg_82) + unsigned(ap_const_lv5_1));
    c_k_cast3_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_k_reg_82),8));
    exitcond1_fu_131_p2 <= "1" when (b_k_reg_71 = ap_const_lv4_A) else "0";
    exitcond2_fu_93_p2 <= "1" when (k_reg_60 = ap_const_lv4_A) else "0";
    exitcond_fu_155_p2 <= "1" when (c_k_reg_82 = ap_const_lv5_10) else "0";
    k_3_fu_99_p2 <= std_logic_vector(unsigned(k_reg_60) + unsigned(ap_const_lv4_1));
    maxval_address0 <= tmp_73_reg_233(11 - 1 downto 0);

    maxval_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            maxval_ce0 <= ap_const_logic_1;
        else 
            maxval_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    maxval_d0 <= 
        b_y0_load_reg_243 when (tmp_74_fu_186_p2(0) = '1') else 
        ap_const_lv16_0;

    maxval_we0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            maxval_we0 <= ap_const_logic_1;
        else 
            maxval_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl7_cast_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl7_fu_113_p3),11));
    p_shl7_fu_113_p3 <= (k_reg_60 & ap_const_lv5_0);
    p_shl_fu_105_p3 <= (k_reg_60 & ap_const_lv7_0);
    tmp1_fu_125_p2 <= std_logic_vector(unsigned(p_shl7_cast_fu_121_p1) + unsigned(p_shl_fu_105_p3));
    tmp2_cast_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp2_fu_167_p2),11));
    tmp2_fu_167_p2 <= std_logic_vector(unsigned(tmp_s_reg_220) + unsigned(c_k_cast3_fu_151_p1));
    tmp_72_fu_176_p2 <= std_logic_vector(unsigned(tmp2_cast_fu_172_p1) + unsigned(tmp1_reg_207));
    tmp_73_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_72_fu_176_p2),64));
    tmp_74_fu_186_p2 <= "1" when (signed(b_y0_load_reg_243) > signed(ap_const_lv16_0)) else "0";
    tmp_s_fu_143_p3 <= (b_k_reg_71 & ap_const_lv4_0);
end behav;