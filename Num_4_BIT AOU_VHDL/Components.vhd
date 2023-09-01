------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (05-08-2023, 11:36:11)
--      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 2.50.200 (Feb 18, 2022)
-- Copyright (c) 2002-2022 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
------------------------------------------------------------

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NOT_gate IS
  PORT( I: IN std_logic;
  	O: OUT std_logic );
END NOT_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NOT_gate IS
BEGIN
  O <= (not I);
END behavioral;



--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY AND2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END AND2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF AND2_gate IS
BEGIN
  O <= (I0 and I1);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY EXOR2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END EXOR2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF EXOR2_gate IS
BEGIN
  O <= (I0 xor I1);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY Multiplexer_2_1 IS

  PORT( I0: IN  std_logic;
        I1: IN  std_logic;
        S0: IN  std_logic;
         Q: OUT std_logic );
END Multiplexer_2_1;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF Multiplexer_2_1 IS
BEGIN
  Q <= I0 when (S0 = '0') else
       I1 when (S0 = '1') else 'X';
END behavioral;

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY Multiplexer_4_1 IS

  PORT( I0: IN  std_logic;
        I1: IN  std_logic;
        I2: IN  std_logic;
        I3: IN  std_logic;
        S1: IN  std_logic;
        S0: IN  std_logic;
         Q: OUT std_logic );
END Multiplexer_4_1;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF Multiplexer_4_1 IS
BEGIN
  Q <= I0 when ((S1 = '0') and (S0 = '0')) else
       I1 when ((S1 = '0') and (S0 = '1')) else
       I2 when ((S1 = '1') and (S0 = '0')) else
       I3 when ((S1 = '1') and (S0 = '1')) else 'X';
END behavioral;

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY Adder_Full IS
  PORT( CIN: IN  std_logic;
        COUT:OUT std_logic;
        A:   IN  std_logic;
        B:   IN  std_logic;
        S:   OUT std_logic );
END Adder_Full;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF Adder_Full IS
SIGNAL ABC: std_logic_vector( 2 downto 0 );
BEGIN
  ABC <= A & B & CIN;
  --
  with ABC select
  S <= '0' when "000",
     '1' when "001",
     '1' when "010",
     '0' when "011",
     '1' when "100",
     '0' when "101",
     '0' when "110",
     '1' when "111",
     'X' when others;
  --
  with ABC select
  COUT <= '0' when "000",
        '0' when "001",
        '0' when "010",
        '1' when "011",
        '0' when "100",
        '1' when "101",
        '1' when "110",
        '1' when "111",
        'X' when others;
END behavioral;



