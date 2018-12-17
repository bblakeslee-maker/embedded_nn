----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2018 02:21:19 PM
-- Design Name: 
-- Module Name: lenet5top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lenet5top is
    port(
        -- Clock and reset
        rst   : in std_logic;
        clk   : in std_logic;
        -- Control lines
        start : in std_logic;
        idle  : out std_logic;
        done  : out std_logic;
        ready : out std_logic;
        -- Test lines
        netScores_address0 : out std_logic_vector(3 downto 0);
        netScores_d0 : out std_logic_vector(15 downto 0);
        netScores_ce0 : out std_logic;
        netScores_we0 : out std_logic
    );
end lenet5top;

architecture Behavioral of lenet5top is
    COMPONENT lenetSynthMatlab_fixpt_0
        PORT (
            ap_clk : IN STD_LOGIC;
            ap_rst : IN STD_LOGIC;
            ap_start : IN STD_LOGIC;
            ap_done : OUT STD_LOGIC;
            ap_idle : OUT STD_LOGIC;
            ap_ready : OUT STD_LOGIC;
            inputImg_ce0 : OUT STD_LOGIC;
            inputImg_we0 : OUT STD_LOGIC;
            inputImg_ce1 : OUT STD_LOGIC;
            inputImg_we1 : OUT STD_LOGIC;
            netScores_ce0 : OUT STD_LOGIC;
            netScores_we0 : OUT STD_LOGIC;
            inputImg_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            inputImg_d0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            inputImg_q0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            inputImg_address1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
            inputImg_d1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            inputImg_q1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            netScores_address0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            netScores_d0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;
    
    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;
    
    signal sImageAddress : std_logic_vector(9 downto 0);
    signal sImageData    : std_logic_vector(7 downto 0);
    signal sImageEnable  : std_logic;
    
begin

    lenet5_0 : lenetSynthMatlab_fixpt_0
        PORT MAP (
            inputImg_ce0 => sImageEnable,
            inputImg_we0 => open,
            inputImg_ce1 => open,
            inputImg_we1 => open,
            netScores_ce0 => netScores_ce0,
            netScores_we0 => netScores_we0,
            ap_clk => clk,
            ap_rst => rst,
            ap_start => start,
            ap_done => done,
            ap_idle => idle,
            ap_ready => ready,
            inputImg_address0 => sImageAddress,
            inputImg_d0 => open,
            inputImg_q0 => sImageData,
            inputImg_address1 => open,
            inputImg_d1 => open,
            inputImg_q1 => sImageData,
            netScores_address0 => netScores_address0,
            netScores_d0 => netScores_d0
        );
        
    imageROM_0 : blk_mem_gen_0
        PORT MAP (
            clka => clk,
            ena => sImageEnable,
            addra => sImageAddress,
            douta => sImageData
        );

end Behavioral;
