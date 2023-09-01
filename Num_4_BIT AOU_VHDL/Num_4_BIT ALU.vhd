------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (05-08-2023, 11:36:11)
--      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 2.50.200 (Feb 18, 2022)
-- Copyright (c) 2002-2022 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;


ENTITY Num_4_BIT_ALU IS
  PORT( 
    --------------------------------------> Inputs:
    iB0:          IN  std_logic;
    iB1:          IN  std_logic;
    iB2:          IN  std_logic;
    iB3:          IN  std_logic;
    iA0:          IN  std_logic;
    iA1:          IN  std_logic;
    iA2:          IN  std_logic;
    iA3:          IN  std_logic;
    iS1:          IN  std_logic;
    iS0:          IN  std_logic;
    --------------------------------------> Outputs:
    ooutput:      OUT std_logic_vector( 7 downto 0 );
    ------------------------------------------------------
	 --------------------------------------> Remainder
    remainder:      OUT std_logic_vector( 2 downto 0 ) 
    ------------------------------------------------------
    );
END Num_4_BIT_ALU;


ARCHITECTURE structural OF Num_4_BIT_ALU IS 

  ----------------------------------------> Components:
  COMPONENT NOT_gate IS
    PORT( I: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT AND2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT EXOR2_gate IS
    PORT( I0,I1: IN std_logic;
          O: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT Multiplexer_2_1 IS
          
    PORT( I0: IN  std_logic;
          I1: IN  std_logic;
          S0: IN  std_logic;
          Q: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT Multiplexer_4_1 IS
          
    PORT( I0: IN  std_logic;
          I1: IN  std_logic;
          I2: IN  std_logic;
          I3: IN  std_logic;
          S1: IN  std_logic;
          S0: IN  std_logic;
          Q: OUT std_logic );
  END COMPONENT;
  --
  COMPONENT Adder_Full IS
    PORT( CIN: IN  std_logic;
          COUT:OUT std_logic;
          A:   IN  std_logic;
          B:   IN  std_logic;
          S:   OUT std_logic );
  END COMPONENT;

  ----------------------------------------> Signals:
  SIGNAL S001: std_logic;
  SIGNAL S002: std_logic;
  SIGNAL S003: std_logic;
  SIGNAL S004: std_logic;
  SIGNAL S005: std_logic;
  SIGNAL S006: std_logic;
  SIGNAL S007: std_logic;
  SIGNAL S008: std_logic;
  SIGNAL S009: std_logic;
  SIGNAL S010: std_logic;
  SIGNAL S011: std_logic;
  SIGNAL S012: std_logic;
  SIGNAL S013: std_logic;
  SIGNAL S014: std_logic;
  SIGNAL S015: std_logic;
  SIGNAL S016: std_logic;
  SIGNAL S017: std_logic;
  SIGNAL S018: std_logic;
  SIGNAL S019: std_logic;
  SIGNAL S020: std_logic;
  SIGNAL S021: std_logic;
  SIGNAL S022: std_logic;
  SIGNAL S023: std_logic;
  SIGNAL S024: std_logic;
  SIGNAL S025: std_logic;
  SIGNAL S026: std_logic;
  SIGNAL S027: std_logic;
  SIGNAL S028: std_logic;
  SIGNAL S029: std_logic;
  SIGNAL S030: std_logic;
  SIGNAL S031: std_logic;
  SIGNAL S032: std_logic;
  SIGNAL S033: std_logic;
  SIGNAL S034: std_logic;
  SIGNAL S035: std_logic;
  SIGNAL S036: std_logic;
  SIGNAL S037: std_logic;
  SIGNAL S038: std_logic;
  SIGNAL S039: std_logic;
  SIGNAL S040: std_logic;
  SIGNAL S041: std_logic;
  SIGNAL S042: std_logic;
  SIGNAL S043: std_logic;
  SIGNAL S044: std_logic;
  SIGNAL S045: std_logic;
  SIGNAL S046: std_logic;
  SIGNAL S047: std_logic;
  SIGNAL S048: std_logic;
  SIGNAL S049: std_logic;
  SIGNAL S050: std_logic;
  SIGNAL S051: std_logic;
  SIGNAL S052: std_logic;
  SIGNAL S053: std_logic;
  SIGNAL S054: std_logic;
  SIGNAL S055: std_logic;
  SIGNAL S056: std_logic;
  SIGNAL S057: std_logic;
  SIGNAL S058: std_logic;
  SIGNAL S059: std_logic;
  SIGNAL S060: std_logic;
  SIGNAL S061: std_logic;
  SIGNAL S062: std_logic;
  SIGNAL S063: std_logic;
  SIGNAL S064: std_logic;
  SIGNAL S065: std_logic;
  SIGNAL S066: std_logic;
  SIGNAL S067: std_logic;
  SIGNAL S068: std_logic;
  SIGNAL S069: std_logic;
  SIGNAL S070: std_logic;
  SIGNAL S071: std_logic;
  SIGNAL S072: std_logic;
  SIGNAL S073: std_logic;
  SIGNAL S074: std_logic;
  SIGNAL S075: std_logic;
  SIGNAL S076: std_logic;
  SIGNAL S077: std_logic;
  SIGNAL S078: std_logic;
  SIGNAL S079: std_logic;
  SIGNAL S080: std_logic;
  SIGNAL S081: std_logic;
  SIGNAL S082: std_logic;
  SIGNAL S083: std_logic;
  SIGNAL S084: std_logic;
  SIGNAL S085: std_logic;
  SIGNAL S086: std_logic;
  SIGNAL S087: std_logic;
  SIGNAL S088: std_logic;
  SIGNAL S089: std_logic;
  SIGNAL S090: std_logic;
  SIGNAL S091: std_logic;
  SIGNAL S092: std_logic;
  SIGNAL S093: std_logic;
  SIGNAL S094: std_logic;
  SIGNAL S095: std_logic;
  SIGNAL S096: std_logic;
  SIGNAL S097: std_logic;
  SIGNAL S098: std_logic;
  SIGNAL S099: std_logic;
  SIGNAL S100: std_logic;
  SIGNAL S101: std_logic;
  SIGNAL S102: std_logic;
  SIGNAL S103: std_logic;
  SIGNAL S104: std_logic;
  SIGNAL S105: std_logic;
  SIGNAL S106: std_logic;
  SIGNAL S107: std_logic;
  SIGNAL S108: std_logic;
  SIGNAL S109: std_logic;
  SIGNAL S110: std_logic;
  SIGNAL S111: std_logic;
  SIGNAL S112: std_logic;
  SIGNAL S113: std_logic;
  SIGNAL S114: std_logic;
  SIGNAL S115: std_logic;
  SIGNAL S116: std_logic;
  SIGNAL S117: std_logic;
  SIGNAL S118: std_logic;
  SIGNAL S119: std_logic;
  SIGNAL S120: std_logic;
  SIGNAL S121: std_logic;
  SIGNAL S122: std_logic;
  SIGNAL S123: std_logic;
  SIGNAL S124: std_logic;
  SIGNAL S125: std_logic;
  SIGNAL S126: std_logic;
  SIGNAL S127: std_logic;
  SIGNAL S128: std_logic;
  SIGNAL S129: std_logic;
  SIGNAL S130: std_logic;
  SIGNAL S131: std_logic;
  SIGNAL S132: std_logic;
  SIGNAL S133: std_logic;
  SIGNAL S134: std_logic;
  SIGNAL S135: std_logic;
  SIGNAL S136: std_logic;
  SIGNAL S137: std_logic;
  SIGNAL S138: std_logic;
  SIGNAL S139: std_logic;
  SIGNAL S140: std_logic;
  SIGNAL S141: std_logic;
  SIGNAL S142: std_logic;
  SIGNAL S143: std_logic;
  SIGNAL S144: std_logic;
  SIGNAL S145: std_logic;
  SIGNAL S146: std_logic;

  ----------------------------------------> Not Connected Pins:
  SIGNAL ncp2_C048: std_logic;
  SIGNAL ncp4_C457: std_logic;
  SIGNAL ncp4_C491: std_logic;


BEGIN -- structural

  ----------------------------------------> Input:
  S103 <= iB0;
  S138 <= iB1;
  S049 <= iB2;
  S052 <= iB3;
  S084 <= iA0;
  S076 <= iA1;
  S069 <= iA2;
  S104 <= iA3;
  S117 <= iS1;
  S115 <= iS0;

  ----------------------------------------> Output:
  ooutput(0) <= S111;
  ooutput(1) <= S112;
  ooutput(2) <= S113;
  ooutput(3) <= S114;
  ooutput(4) <= S119;
  ooutput(5) <= S123;
  ooutput(6) <= S124;
  ooutput(7) <= S125;
  
  --------------------------------------> Remainder
  remainder(0) <= S144;
  remainder(1) <= S145;
  remainder(2) <= S146;

  ----------------------------------------> Constants:
  S016 <= '0';
  S017 <= '0';
  S018 <= '0';
  S019 <= '0';
  S054 <= '0';
  S055 <= '0';
  S056 <= '0';
  S137 <= '0';
  S095 <= '1';
  S096 <= '1';
  S097 <= '1';
  S098 <= '1';
  S063 <= '0';
  S099 <= '0';
  S100 <= '0';
  S127 <= '0';
  S126 <= '0';
  S128 <= '0';

  ----------------------------------------> Component Mapping:
  C001: Adder_Full PORT MAP ( S133, S009, S084, S001, S012 );
  C002: Adder_Full PORT MAP ( S009, S010, S076, S002, S013 );
  C003: Adder_Full PORT MAP ( S010, S011, S069, S003, S014 );
  C004: Adder_Full PORT MAP ( S011, S141, S104, S004, S015 );
  C005: EXOR2_gate PORT MAP ( S103, S133, S001 );
  C006: EXOR2_gate PORT MAP ( S138, S133, S002 );
  C007: EXOR2_gate PORT MAP ( S049, S133, S003 );
  C008: EXOR2_gate PORT MAP ( S052, S133, S004 );
  C044: EXOR2_gate PORT MAP ( S015, S135, S005 );
  C045: EXOR2_gate PORT MAP ( S014, S135, S006 );
  C046: EXOR2_gate PORT MAP ( S013, S135, S007 );
  C047: EXOR2_gate PORT MAP ( S012, S135, S008 );
  C048: Adder_Full PORT MAP ( S022, ncp2_C048, S019, S005, S132 );
  C049: Adder_Full PORT MAP ( S021, S022, S018, S006, S131 );
  C050: Adder_Full PORT MAP ( S020, S021, S017, S007, S130 );
  C051: Adder_Full PORT MAP ( S135, S020, S016, S008, S129 );
  C111: Adder_Full PORT MAP ( S054, S027, S024, S023, S107 );
  C112: Adder_Full PORT MAP ( S027, S030, S026, S025, S029 );
  C113: AND2_gate PORT MAP ( S103, S084, S060 );
  C114: AND2_gate PORT MAP ( S103, S076, S023 );
  C118: AND2_gate PORT MAP ( S084, S138, S024 );
  C119: AND2_gate PORT MAP ( S103, S069, S025 );
  C120: AND2_gate PORT MAP ( S138, S076, S026 );
  C205: Adder_Full PORT MAP ( S055, S035, S028, S029, S108 );
  C206: AND2_gate PORT MAP ( S084, S049, S028 );
  C218: Adder_Full PORT MAP ( S030, S136, S032, S031, S033 );
  C219: Adder_Full PORT MAP ( S035, S038, S034, S033, S036 );
  C220: Adder_Full PORT MAP ( S056, S039, S037, S036, S109 );
  C221: AND2_gate PORT MAP ( S103, S104, S031 );
  C223: AND2_gate PORT MAP ( S069, S138, S032 );
  C224: AND2_gate PORT MAP ( S076, S049, S034 );
  C225: AND2_gate PORT MAP ( S084, S052, S037 );
  C276: Adder_Full PORT MAP ( S137, S057, S136, S042, S040 );
  C277: Adder_Full PORT MAP ( S038, S046, S043, S040, S041 );
  C278: Adder_Full PORT MAP ( S039, S048, S044, S041, S118 );
  C279: AND2_gate PORT MAP ( S104, S138, S042 );
  C280: AND2_gate PORT MAP ( S076, S052, S044 );
  C281: AND2_gate PORT MAP ( S069, S049, S043 );
  C350: Adder_Full PORT MAP ( S046, S058, S045, S057, S047 );
  C351: Adder_Full PORT MAP ( S048, S053, S050, S047, S121 );
  C352: AND2_gate PORT MAP ( S104, S049, S045 );
  C353: AND2_gate PORT MAP ( S069, S052, S050 );
  C384: Adder_Full PORT MAP ( S053, S059, S051, S058, S120 );
  C385: AND2_gate PORT MAP ( S104, S052, S051 );
  C454: Adder_Full PORT MAP ( S087, S110, S063, S061, S062 );
  C455: NOT_gate PORT MAP ( S138, S061 );
  C457: Multiplexer_2_1 PORT MAP ( S063, S062, S110, ncp4_C457 );
  C464: Multiplexer_2_1 PORT MAP ( S104, S064, S110, S066 );
  C465: NOT_gate PORT MAP ( S103, S065 );
  C466: Adder_Full PORT MAP ( S095, S087, S104, S065, S064 );
  C473: Multiplexer_2_1 PORT MAP ( S066, S067, S093, S101 );
  C474: NOT_gate PORT MAP ( S138, S068 );
  C475: Adder_Full PORT MAP ( S088, S093, S066, S068, S067 );
  C482: Multiplexer_2_1 PORT MAP ( S069, S070, S093, S102 );
  C483: NOT_gate PORT MAP ( S103, S071 );
  C484: Adder_Full PORT MAP ( S096, S088, S069, S071, S070 );
  C491: Multiplexer_2_1 PORT MAP ( S101, S072, S106, ncp4_C491 );
  C492: NOT_gate PORT MAP ( S099, S073 );
  C493: Adder_Full PORT MAP ( S089, S106, S101, S073, S072 );
  C500: Multiplexer_2_1 PORT MAP ( S102, S074, S106, S079 );
  C501: NOT_gate PORT MAP ( S138, S075 );
  C502: Adder_Full PORT MAP ( S090, S089, S102, S075, S074 );
  C509: Multiplexer_2_1 PORT MAP ( S076, S077, S106, S094 );
  C510: NOT_gate PORT MAP ( S103, S078 );
  C511: Adder_Full PORT MAP ( S097, S090, S076, S078, S077 );
  C518: Multiplexer_2_1 PORT MAP ( S079, S080, S105, S146 );
  C519: NOT_gate PORT MAP ( S100, S081 );
  C520: Adder_Full PORT MAP ( S092, S105, S079, S081, S080 );
  C527: Multiplexer_2_1 PORT MAP ( S094, S082, S105, S145 );
  C528: NOT_gate PORT MAP ( S138, S083 );
  C529: Adder_Full PORT MAP ( S091, S092, S094, S083, S082 );
  C536: Multiplexer_2_1 PORT MAP ( S084, S085, S105, S144 );
  C537: NOT_gate PORT MAP ( S103, S086 );
  C538: Adder_Full PORT MAP ( S098, S091, S084, S086, S085 );
  C784: Multiplexer_4_1 PORT MAP ( S129, S129, S060, S105, S117, 
                                   S115, S111 );
  C785: Multiplexer_4_1 PORT MAP ( S130, S130, S107, S106, S117, 
                                   S115, S112 );
  C786: Multiplexer_4_1 PORT MAP ( S131, S131, S108, S093, S117, 
                                   S115, S113 );
  C787: Multiplexer_4_1 PORT MAP ( S132, S132, S109, S110, S117, 
                                   S115, S114 );
  C837: NOT_gate PORT MAP ( S117, S140 );
  C838: AND2_gate PORT MAP ( S115, S140, S133 );
  C891: Multiplexer_2_1 PORT MAP ( S143, S118, S122, S119 );
  C892: NOT_gate PORT MAP ( S115, S116 );
  C893: AND2_gate PORT MAP ( S116, S117, S122 );
  C924: Multiplexer_2_1 PORT MAP ( S127, S120, S122, S124 );
  C926: Multiplexer_2_1 PORT MAP ( S126, S121, S122, S123 );
  C932: Multiplexer_2_1 PORT MAP ( S128, S059, S122, S125 );
  C1006: NOT_gate PORT MAP ( S141, S134 );
  C1007: AND2_gate PORT MAP ( S134, S133, S135 );
  C1041: Multiplexer_2_1 PORT MAP ( S135, S141, S142, S143 );
  C1042: NOT_gate PORT MAP ( S115, S139 );
  C1045: AND2_gate PORT MAP ( S139, S140, S142 );
END structural;
