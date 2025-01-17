-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity c_sum is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    x_ce0 : OUT STD_LOGIC;
    x_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    y_ce0 : OUT STD_LOGIC;
    y_we0 : OUT STD_LOGIC;
    y_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of c_sum is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv6_1E : STD_LOGIC_VECTOR (5 downto 0) := "011110";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal k_29_fu_147_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_29_reg_369 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_177_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_reg_374 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond4_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_k_13_fu_193_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal b_k_13_reg_382 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_170_fu_208_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_170_reg_387 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond3_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_30_fu_219_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_30_reg_400 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_cast_fu_257_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_cast_reg_405 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond2_fu_213_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_k_14_fu_267_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal b_k_14_reg_413 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_171_fu_297_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_171_reg_418 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond1_fu_261_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_fu_307_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_reg_423 : STD_LOGIC_VECTOR (8 downto 0);
    signal c_k_2_fu_326_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_k_2_reg_431 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal exitcond_fu_320_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_addr_5_reg_441 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal k_reg_79 : STD_LOGIC_VECTOR (2 downto 0);
    signal b_k_reg_90 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal k_1_reg_101 : STD_LOGIC_VECTOR (2 downto 0);
    signal b_k_1_reg_112 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_k_reg_123 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal tmp_173_fu_347_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_175_fu_361_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_134_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_shl_fu_153_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl9_fu_165_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_cast_fu_161_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl9_cast_fu_173_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal b_k_cast7_fu_183_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_169_fu_199_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_175_cast_fu_204_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_177_fu_225_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_shl10_fu_229_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_178_fu_241_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_shl10_cast_fu_237_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl11_cast_fu_247_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_fu_251_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl12_fu_273_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl13_fu_285_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl12_cast_fu_281_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl13_cast_fu_293_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_177_cast_fu_303_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal c_k_cast3_fu_316_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp2_fu_332_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp2_cast_fu_338_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_172_fu_342_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal c_k_cast4_fu_312_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_174_fu_352_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_181_cast_fu_357_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

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
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    lenetSynthMatlab_bkb_U5 : component lenetSynthMatlab_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => y_q0,
        din1 => x_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_134_p2);





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


    b_k_1_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (exitcond_fu_320_p2 = ap_const_lv1_1))) then 
                b_k_1_reg_112 <= b_k_14_reg_413;
            elsif (((exitcond2_fu_213_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                b_k_1_reg_112 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    b_k_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_fu_141_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                b_k_reg_90 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                b_k_reg_90 <= b_k_13_reg_382;
            end if; 
        end if;
    end process;

    c_k_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_261_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                c_k_reg_123 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                c_k_reg_123 <= c_k_2_reg_431;
            end if; 
        end if;
    end process;

    k_1_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                k_1_reg_101 <= ap_const_lv3_0;
            elsif (((exitcond1_fu_261_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                k_1_reg_101 <= k_30_reg_400;
            end if; 
        end if;
    end process;

    k_reg_79_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_187_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                k_reg_79 <= k_29_reg_369;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                k_reg_79 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                b_k_13_reg_382 <= b_k_13_fu_193_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                b_k_14_reg_413 <= b_k_14_fu_267_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                c_k_2_reg_431 <= c_k_2_fu_326_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                k_29_reg_369 <= k_29_fu_147_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                k_30_reg_400 <= k_30_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_261_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    tmp1_reg_423(8 downto 1) <= tmp1_fu_307_p2(8 downto 1);
                    tmp_171_reg_418(6 downto 1) <= tmp_171_fu_297_p2(6 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_187_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    tmp_170_reg_387(31 downto 0) <= tmp_170_fu_208_p1(31 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_213_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    tmp_cast_reg_405(8 downto 1) <= tmp_cast_fu_257_p1(8 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_fu_141_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_reg_374(6 downto 1) <= tmp_fu_177_p2(6 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_320_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                y_addr_5_reg_441 <= tmp_175_fu_361_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    tmp_reg_374(0) <= '0';
    tmp_170_reg_387(63 downto 32) <= "00000000000000000000000000000000";
    tmp_cast_reg_405(0) <= '0';
    tmp_171_reg_418(0) <= '0';
    tmp1_reg_423(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_141_p2, ap_CS_fsm_state3, exitcond3_fu_187_p2, ap_CS_fsm_state5, exitcond2_fu_213_p2, ap_CS_fsm_state6, exitcond1_fu_261_p2, ap_CS_fsm_state7, exitcond_fu_320_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond4_fu_141_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond3_fu_187_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                if (((exitcond2_fu_213_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((exitcond1_fu_261_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (exitcond_fu_320_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5, exitcond2_fu_213_p2)
    begin
        if ((((exitcond2_fu_213_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state5, exitcond2_fu_213_p2)
    begin
        if (((exitcond2_fu_213_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    b_k_13_fu_193_p2 <= std_logic_vector(unsigned(b_k_reg_90) + unsigned(ap_const_lv3_1));
    b_k_14_fu_267_p2 <= std_logic_vector(unsigned(b_k_1_reg_112) + unsigned(ap_const_lv3_1));
    b_k_cast7_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(b_k_reg_90),7));
    c_k_2_fu_326_p2 <= std_logic_vector(unsigned(c_k_reg_123) + unsigned(ap_const_lv3_1));
    c_k_cast3_fu_316_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_k_reg_123),6));
    c_k_cast4_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_k_reg_123),7));
    exitcond1_fu_261_p2 <= "1" when (b_k_1_reg_112 = ap_const_lv3_5) else "0";
    exitcond2_fu_213_p2 <= "1" when (k_1_reg_101 = ap_const_lv3_4) else "0";
    exitcond3_fu_187_p2 <= "1" when (b_k_reg_90 = ap_const_lv3_6) else "0";
    exitcond4_fu_141_p2 <= "1" when (k_reg_79 = ap_const_lv3_5) else "0";
    exitcond_fu_320_p2 <= "1" when (c_k_reg_123 = ap_const_lv3_6) else "0";
    k_29_fu_147_p2 <= std_logic_vector(unsigned(k_reg_79) + unsigned(ap_const_lv3_1));
    k_30_fu_219_p2 <= std_logic_vector(unsigned(k_1_reg_101) + unsigned(ap_const_lv3_1));
    p_shl10_cast_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl10_fu_229_p3),8));
    p_shl10_fu_229_p3 <= (tmp_177_fu_225_p1 & ap_const_lv5_0);
    p_shl11_cast_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_178_fu_241_p2),8));
    p_shl12_cast_fu_281_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl12_fu_273_p3),7));
    p_shl12_fu_273_p3 <= (b_k_1_reg_112 & ap_const_lv3_0);
    p_shl13_cast_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl13_fu_285_p3),7));
    p_shl13_fu_285_p3 <= (b_k_1_reg_112 & ap_const_lv1_0);
    p_shl9_cast_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl9_fu_165_p3),7));
    p_shl9_fu_165_p3 <= (k_reg_79 & ap_const_lv1_0);
    p_shl_cast_fu_161_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_fu_153_p3),7));
    p_shl_fu_153_p3 <= (k_reg_79 & ap_const_lv3_0);
    tmp1_fu_307_p2 <= std_logic_vector(signed(tmp_177_cast_fu_303_p1) + signed(tmp_cast_reg_405));
    tmp2_cast_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp2_fu_332_p2),9));
    tmp2_fu_332_p2 <= std_logic_vector(unsigned(c_k_cast3_fu_316_p1) + unsigned(ap_const_lv6_1E));
    tmp_169_fu_199_p2 <= std_logic_vector(unsigned(tmp_reg_374) + unsigned(b_k_cast7_fu_183_p1));
    tmp_170_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_175_cast_fu_204_p1),64));
    tmp_171_fu_297_p2 <= std_logic_vector(unsigned(p_shl12_cast_fu_281_p1) - unsigned(p_shl13_cast_fu_293_p1));
    tmp_172_fu_342_p2 <= std_logic_vector(unsigned(tmp2_cast_fu_338_p1) + unsigned(tmp1_reg_423));
    tmp_173_fu_347_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_172_fu_342_p2),64));
    tmp_174_fu_352_p2 <= std_logic_vector(signed(tmp_171_reg_418) + signed(c_k_cast4_fu_312_p1));
        tmp_175_cast_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_169_fu_199_p2),32));

    tmp_175_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_181_cast_fu_357_p1),64));
        tmp_177_cast_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_171_fu_297_p2),9));

    tmp_177_fu_225_p1 <= k_1_reg_101(2 - 1 downto 0);
    tmp_178_fu_241_p2 <= std_logic_vector(shift_left(unsigned(k_1_reg_101),to_integer(unsigned('0' & ap_const_lv3_1(3-1 downto 0)))));
        tmp_181_cast_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_174_fu_352_p2),32));

        tmp_cast_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_s_fu_251_p2),9));

    tmp_fu_177_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_161_p1) - unsigned(p_shl9_cast_fu_173_p1));
    tmp_s_fu_251_p2 <= std_logic_vector(unsigned(p_shl10_cast_fu_237_p1) - unsigned(p_shl11_cast_fu_247_p1));

    x_address0_assign_proc : process(ap_CS_fsm_state3, tmp_170_fu_208_p1, ap_CS_fsm_state7, tmp_173_fu_347_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            x_address0 <= tmp_173_fu_347_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            x_address0 <= tmp_170_fu_208_p1(8 - 1 downto 0);
        else 
            x_address0 <= "XXXXXXXX";
        end if; 
    end process;


    x_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            x_ce0 <= ap_const_logic_1;
        else 
            x_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    y_address0_assign_proc : process(tmp_170_reg_387, ap_CS_fsm_state7, y_addr_5_reg_441, ap_CS_fsm_state4, ap_CS_fsm_state11, tmp_175_fu_361_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            y_address0 <= y_addr_5_reg_441;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            y_address0 <= tmp_175_fu_361_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            y_address0 <= tmp_170_reg_387(5 - 1 downto 0);
        else 
            y_address0 <= "XXXXX";
        end if; 
    end process;


    y_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state4, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            y_ce0 <= ap_const_logic_1;
        else 
            y_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    y_d0_assign_proc : process(x_q0, ap_CS_fsm_state4, ap_CS_fsm_state11, grp_fu_134_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            y_d0 <= grp_fu_134_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            y_d0 <= x_q0;
        else 
            y_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    y_we0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            y_we0 <= ap_const_logic_1;
        else 
            y_we0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
