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
    x_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    x_ce0 : OUT STD_LOGIC;
    x_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    y_ce0 : OUT STD_LOGIC;
    y_we0 : OUT STD_LOGIC;
    y_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of sum is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal k_2_fu_112_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_2_reg_205 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_reg_210 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond2_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_3_fu_133_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_3_reg_223 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp1_cast_fu_157_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp1_cast_reg_228 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond1_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_k_1_fu_171_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal b_k_1_reg_236 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal exitcond_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_addr_1_reg_246 : STD_LOGIC_VECTOR (2 downto 0);
    signal x_load_1_reg_251 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal y_load_reg_256 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_102_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_261 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal k_reg_69 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal k_1_reg_80 : STD_LOGIC_VECTOR (2 downto 0);
    signal b_k_reg_91 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_6_fu_192_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_197_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_1_fu_139_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal k_1_cast_fu_123_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_fu_143_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp1_fu_151_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal b_k_cast_fu_161_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp2_fu_177_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp2_cast_fu_183_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_5_fu_187_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);

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
    lenetSynthMatlab_bkb_U1 : component lenetSynthMatlab_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => y_load_reg_256,
        din1 => x_load_1_reg_251,
        ce => ap_const_logic_1,
        dout => grp_fu_102_p2);





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


    b_k_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_127_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                b_k_reg_91 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                b_k_reg_91 <= b_k_1_reg_236;
            end if; 
        end if;
    end process;

    k_1_reg_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_106_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                k_1_reg_80 <= ap_const_lv3_0;
            elsif (((exitcond_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                k_1_reg_80 <= k_3_reg_223;
            end if; 
        end if;
    end process;

    k_reg_69_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                k_reg_69 <= k_2_reg_205;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                k_reg_69 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                b_k_1_reg_236 <= b_k_1_fu_171_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                k_2_reg_205 <= k_2_fu_112_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                k_3_reg_223 <= k_3_fu_133_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_127_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    tmp1_cast_reg_228(3 downto 0) <= tmp1_cast_fu_157_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                tmp_8_reg_261 <= grp_fu_102_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_106_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_reg_210(2 downto 0) <= tmp_fu_118_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                x_load_1_reg_251 <= x_q0;
                y_load_reg_256 <= y_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                y_addr_1_reg_246 <= tmp_7_fu_197_p1(3 - 1 downto 0);
            end if;
        end if;
    end process;
    tmp_reg_210(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";
    tmp1_cast_reg_228(4) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_106_p2, ap_CS_fsm_state4, exitcond1_fu_127_p2, ap_CS_fsm_state5, exitcond_fu_165_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond2_fu_106_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state4 => 
                if (((exitcond1_fu_127_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((exitcond_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
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
                ap_NS_fsm <= ap_ST_fsm_state5;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4, exitcond1_fu_127_p2)
    begin
        if ((((exitcond1_fu_127_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state4, exitcond1_fu_127_p2)
    begin
        if (((exitcond1_fu_127_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    b_k_1_fu_171_p2 <= std_logic_vector(unsigned(b_k_reg_91) + unsigned(ap_const_lv3_1));
    b_k_cast_fu_161_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(b_k_reg_91),4));
    exitcond1_fu_127_p2 <= "1" when (k_1_reg_80 = ap_const_lv3_4) else "0";
    exitcond2_fu_106_p2 <= "1" when (k_reg_69 = ap_const_lv3_5) else "0";
    exitcond_fu_165_p2 <= "1" when (b_k_reg_91 = ap_const_lv3_5) else "0";
    k_1_cast_fu_123_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_1_reg_80),4));
    k_2_fu_112_p2 <= std_logic_vector(unsigned(k_reg_69) + unsigned(ap_const_lv3_1));
    k_3_fu_133_p2 <= std_logic_vector(unsigned(k_1_reg_80) + unsigned(ap_const_lv3_1));
    p_shl_fu_143_p3 <= (tmp_1_fu_139_p1 & ap_const_lv2_0);
    tmp1_cast_fu_157_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_fu_151_p2),5));
    tmp1_fu_151_p2 <= std_logic_vector(unsigned(k_1_cast_fu_123_p1) + unsigned(p_shl_fu_143_p3));
    tmp2_cast_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp2_fu_177_p2),5));
    tmp2_fu_177_p2 <= std_logic_vector(unsigned(b_k_cast_fu_161_p1) + unsigned(ap_const_lv4_5));
    tmp_1_fu_139_p1 <= k_1_reg_80(2 - 1 downto 0);
    tmp_5_fu_187_p2 <= std_logic_vector(unsigned(tmp2_cast_fu_183_p1) + unsigned(tmp1_cast_reg_228));
    tmp_6_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_187_p2),64));
    tmp_7_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(b_k_reg_91),64));
    tmp_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_69),64));

    x_address0_assign_proc : process(ap_CS_fsm_state2, tmp_fu_118_p1, ap_CS_fsm_state5, tmp_6_fu_192_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            x_address0 <= tmp_6_fu_192_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            x_address0 <= tmp_fu_118_p1(5 - 1 downto 0);
        else 
            x_address0 <= "XXXXX";
        end if; 
    end process;


    x_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            x_ce0 <= ap_const_logic_1;
        else 
            x_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    y_address0_assign_proc : process(tmp_reg_210, ap_CS_fsm_state5, y_addr_1_reg_246, ap_CS_fsm_state3, ap_CS_fsm_state12, tmp_7_fu_197_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            y_address0 <= y_addr_1_reg_246;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            y_address0 <= tmp_7_fu_197_p1(3 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            y_address0 <= tmp_reg_210(3 - 1 downto 0);
        else 
            y_address0 <= "XXX";
        end if; 
    end process;


    y_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state3, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            y_ce0 <= ap_const_logic_1;
        else 
            y_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    y_d0_assign_proc : process(x_q0, tmp_8_reg_261, ap_CS_fsm_state3, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            y_d0 <= tmp_8_reg_261;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            y_d0 <= x_q0;
        else 
            y_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    y_we0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            y_we0 <= ap_const_logic_1;
        else 
            y_we0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;