-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Jul  3 18:03:28 2017
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ shell_axiStreamGate_0_0_sim_netlist.vhdl
-- Design      : shell_axiStreamGate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate_AXILiteS_s_axi is
  port (
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \int_programSafe_reg[0]_0\ : out STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    \tmp_reg_123_reg[0]\ : out STD_LOGIC;
    \tmp_1_reg_127_reg[0]\ : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    \tmp_1_reg_127_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    packetIn_TVALID : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    \tmp_reg_123_reg[0]_0\ : in STD_LOGIC;
    \tmp_1_reg_127_reg[0]_1\ : in STD_LOGIC;
    \tmp_last_V_reg_136_reg[0]\ : in STD_LOGIC;
    ap_reg_ioackin_programSafe_dummy_ack : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate_AXILiteS_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate_AXILiteS_s_axi is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[3]_i_10_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_4_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_5_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_6_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_7_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_8_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_9_n_0\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal int_programSafe : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \int_programSafe[0]_i_1_n_0\ : STD_LOGIC;
  signal int_programSafe_ap_vld : STD_LOGIC;
  signal int_programSafe_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_programSafe_ap_vld_i_2_n_0 : STD_LOGIC;
  signal int_programSafe_ap_vld_i_3_n_0 : STD_LOGIC;
  signal \^int_programsafe_reg[0]_0\ : STD_LOGIC;
  signal \int_programming[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[13]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[14]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[17]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[18]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[21]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[22]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[25]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[26]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[28]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[29]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[30]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[31]_i_2_n_0\ : STD_LOGIC;
  signal \int_programming[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_programming[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_programming[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in3_out : STD_LOGIC;
  signal programSafe_ap_vld : STD_LOGIC;
  signal programming : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rstate[0]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_axilites_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_axilites_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal wstate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \wstate[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of int_programSafe_ap_vld_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_programSafe_ap_vld_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_programming[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_programming[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_programming[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_programming[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_programming[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_programming[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_programming[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_programming[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_programming[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_programming[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_programming[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_programming[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_programming[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_programming[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_programming[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_programming[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_programming[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_programming[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_programming[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_programming[27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_programming[28]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_programming[29]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_programming[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_programming[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_programming[31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_programming[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_programming[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_programming[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_programming[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_programming[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_programming[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_programming[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rdata[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rstate[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axi_AXILiteS_AWREADY_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of s_axi_AXILiteS_WREADY_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wstate[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wstate[1]_i_1\ : label is "soft_lutpair1";
begin
  SR(0) <= \^sr\(0);
  \int_programSafe_reg[0]_0\ <= \^int_programsafe_reg[0]_0\;
  s_axi_AXILiteS_RDATA(31 downto 0) <= \^s_axi_axilites_rdata\(31 downto 0);
  s_axi_AXILiteS_RVALID <= \^s_axi_axilites_rvalid\;
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\,
      I1 => \ap_CS_fsm[3]_i_3_n_0\,
      I2 => \ap_CS_fsm[3]_i_4_n_0\,
      I3 => \ap_CS_fsm[3]_i_5_n_0\,
      I4 => packetIn_TVALID,
      I5 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAEEEEEEEE"
    )
        port map (
      I0 => \tmp_1_reg_127_reg[0]_0\,
      I1 => Q(0),
      I2 => \ap_CS_fsm[3]_i_3_n_0\,
      I3 => \ap_CS_fsm[3]_i_4_n_0\,
      I4 => \ap_CS_fsm[3]_i_5_n_0\,
      I5 => packetIn_TVALID,
      O => D(1)
    );
\ap_CS_fsm[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => programming(18),
      I1 => programming(19),
      I2 => programming(20),
      I3 => programming(21),
      I4 => programming(31),
      I5 => programming(30),
      O => \ap_CS_fsm[3]_i_10_n_0\
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => programming(25),
      I1 => programming(24),
      I2 => programming(23),
      I3 => programming(22),
      O => \ap_CS_fsm[3]_i_3_n_0\
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => programming(17),
      I1 => programming(16),
      I2 => \ap_CS_fsm[3]_i_6_n_0\,
      I3 => \ap_CS_fsm[3]_i_7_n_0\,
      I4 => \ap_CS_fsm[3]_i_8_n_0\,
      I5 => \ap_CS_fsm[3]_i_9_n_0\,
      O => \ap_CS_fsm[3]_i_4_n_0\
    );
\ap_CS_fsm[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_10_n_0\,
      I1 => programming(26),
      I2 => programming(27),
      I3 => programming(28),
      I4 => programming(29),
      O => \ap_CS_fsm[3]_i_5_n_0\
    );
\ap_CS_fsm[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => programming(7),
      I1 => programming(6),
      I2 => programming(5),
      I3 => programming(4),
      O => \ap_CS_fsm[3]_i_6_n_0\
    );
\ap_CS_fsm[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => programming(3),
      I1 => programming(2),
      I2 => programming(1),
      I3 => programming(0),
      O => \ap_CS_fsm[3]_i_7_n_0\
    );
\ap_CS_fsm[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => programming(15),
      I1 => programming(14),
      I2 => programming(13),
      I3 => programming(12),
      O => \ap_CS_fsm[3]_i_8_n_0\
    );
\ap_CS_fsm[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => programming(11),
      I1 => programming(10),
      I2 => programming(9),
      I3 => programming(8),
      O => \ap_CS_fsm[3]_i_9_n_0\
    );
\int_programSafe[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88FF8808"
    )
        port map (
      I0 => \^int_programsafe_reg[0]_0\,
      I1 => Q(1),
      I2 => ap_reg_ioackin_programSafe_dummy_ack,
      I3 => Q(0),
      I4 => int_programSafe(0),
      O => \int_programSafe[0]_i_1_n_0\
    );
\int_programSafe[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \tmp_reg_123_reg[0]_0\,
      I1 => \tmp_1_reg_127_reg[0]_1\,
      I2 => \tmp_last_V_reg_136_reg[0]\,
      O => \^int_programsafe_reg[0]_0\
    );
int_programSafe_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF0000"
    )
        port map (
      I0 => int_programSafe_ap_vld_i_2_n_0,
      I1 => int_programSafe_ap_vld_i_3_n_0,
      I2 => ap_rst_n,
      I3 => s_axi_AXILiteS_ARADDR(4),
      I4 => programSafe_ap_vld,
      I5 => int_programSafe_ap_vld,
      O => int_programSafe_ap_vld_i_1_n_0
    );
int_programSafe_ap_vld_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(1),
      I1 => s_axi_AXILiteS_ARADDR(0),
      I2 => s_axi_AXILiteS_ARADDR(3),
      I3 => s_axi_AXILiteS_ARADDR(2),
      O => int_programSafe_ap_vld_i_2_n_0
    );
int_programSafe_ap_vld_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_AXILiteS_ARVALID,
      I1 => \^s_axi_axilites_rvalid\,
      O => int_programSafe_ap_vld_i_3_n_0
    );
int_programSafe_ap_vld_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000F700"
    )
        port map (
      I0 => \tmp_reg_123_reg[0]_0\,
      I1 => \tmp_1_reg_127_reg[0]_1\,
      I2 => \tmp_last_V_reg_136_reg[0]\,
      I3 => Q(1),
      I4 => ap_reg_ioackin_programSafe_dummy_ack,
      I5 => Q(0),
      O => programSafe_ap_vld
    );
int_programSafe_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_programSafe_ap_vld_i_1_n_0,
      Q => int_programSafe_ap_vld,
      R => \^sr\(0)
    );
\int_programSafe_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_programSafe[0]_i_1_n_0\,
      Q => int_programSafe(0),
      R => \^sr\(0)
    );
\int_programming[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(0),
      O => \int_programming[0]_i_1_n_0\
    );
\int_programming[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(10),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(10),
      O => \int_programming[10]_i_1_n_0\
    );
\int_programming[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(11),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(11),
      O => \int_programming[11]_i_1_n_0\
    );
\int_programming[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(12),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(12),
      O => \int_programming[12]_i_1_n_0\
    );
\int_programming[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(13),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(13),
      O => \int_programming[13]_i_1_n_0\
    );
\int_programming[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(14),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(14),
      O => \int_programming[14]_i_1_n_0\
    );
\int_programming[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(15),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(15),
      O => \int_programming[15]_i_1_n_0\
    );
\int_programming[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(16),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(16),
      O => \int_programming[16]_i_1_n_0\
    );
\int_programming[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(17),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(17),
      O => \int_programming[17]_i_1_n_0\
    );
\int_programming[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(18),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(18),
      O => \int_programming[18]_i_1_n_0\
    );
\int_programming[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(19),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(19),
      O => \int_programming[19]_i_1_n_0\
    );
\int_programming[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(1),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(1),
      O => \int_programming[1]_i_1_n_0\
    );
\int_programming[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(20),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(20),
      O => \int_programming[20]_i_1_n_0\
    );
\int_programming[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(21),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(21),
      O => \int_programming[21]_i_1_n_0\
    );
\int_programming[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(22),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(22),
      O => \int_programming[22]_i_1_n_0\
    );
\int_programming[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(23),
      I1 => s_axi_AXILiteS_WSTRB(2),
      I2 => programming(23),
      O => \int_programming[23]_i_1_n_0\
    );
\int_programming[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(24),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(24),
      O => \int_programming[24]_i_1_n_0\
    );
\int_programming[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(25),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(25),
      O => \int_programming[25]_i_1_n_0\
    );
\int_programming[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(26),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(26),
      O => \int_programming[26]_i_1_n_0\
    );
\int_programming[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(27),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(27),
      O => \int_programming[27]_i_1_n_0\
    );
\int_programming[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(28),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(28),
      O => \int_programming[28]_i_1_n_0\
    );
\int_programming[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(29),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(29),
      O => \int_programming[29]_i_1_n_0\
    );
\int_programming[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(2),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(2),
      O => \int_programming[2]_i_1_n_0\
    );
\int_programming[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(30),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(30),
      O => \int_programming[30]_i_1_n_0\
    );
\int_programming[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => s_axi_AXILiteS_WVALID,
      I2 => wstate(0),
      I3 => wstate(1),
      I4 => \int_programming[31]_i_3_n_0\,
      O => p_0_in3_out
    );
\int_programming[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(31),
      I1 => s_axi_AXILiteS_WSTRB(3),
      I2 => programming(31),
      O => \int_programming[31]_i_2_n_0\
    );
\int_programming[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \waddr_reg_n_0_[1]\,
      I1 => \waddr_reg_n_0_[0]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      O => \int_programming[31]_i_3_n_0\
    );
\int_programming[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(3),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(3),
      O => \int_programming[3]_i_1_n_0\
    );
\int_programming[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(4),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(4),
      O => \int_programming[4]_i_1_n_0\
    );
\int_programming[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(5),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(5),
      O => \int_programming[5]_i_1_n_0\
    );
\int_programming[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(6),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(6),
      O => \int_programming[6]_i_1_n_0\
    );
\int_programming[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(7),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => programming(7),
      O => \int_programming[7]_i_1_n_0\
    );
\int_programming[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(8),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(8),
      O => \int_programming[8]_i_1_n_0\
    );
\int_programming[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(9),
      I1 => s_axi_AXILiteS_WSTRB(1),
      I2 => programming(9),
      O => \int_programming[9]_i_1_n_0\
    );
\int_programming_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[0]_i_1_n_0\,
      Q => programming(0),
      R => \^sr\(0)
    );
\int_programming_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[10]_i_1_n_0\,
      Q => programming(10),
      R => \^sr\(0)
    );
\int_programming_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[11]_i_1_n_0\,
      Q => programming(11),
      R => \^sr\(0)
    );
\int_programming_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[12]_i_1_n_0\,
      Q => programming(12),
      R => \^sr\(0)
    );
\int_programming_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[13]_i_1_n_0\,
      Q => programming(13),
      R => \^sr\(0)
    );
\int_programming_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[14]_i_1_n_0\,
      Q => programming(14),
      R => \^sr\(0)
    );
\int_programming_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[15]_i_1_n_0\,
      Q => programming(15),
      R => \^sr\(0)
    );
\int_programming_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[16]_i_1_n_0\,
      Q => programming(16),
      R => \^sr\(0)
    );
\int_programming_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[17]_i_1_n_0\,
      Q => programming(17),
      R => \^sr\(0)
    );
\int_programming_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[18]_i_1_n_0\,
      Q => programming(18),
      R => \^sr\(0)
    );
\int_programming_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[19]_i_1_n_0\,
      Q => programming(19),
      R => \^sr\(0)
    );
\int_programming_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[1]_i_1_n_0\,
      Q => programming(1),
      R => \^sr\(0)
    );
\int_programming_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[20]_i_1_n_0\,
      Q => programming(20),
      R => \^sr\(0)
    );
\int_programming_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[21]_i_1_n_0\,
      Q => programming(21),
      R => \^sr\(0)
    );
\int_programming_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[22]_i_1_n_0\,
      Q => programming(22),
      R => \^sr\(0)
    );
\int_programming_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[23]_i_1_n_0\,
      Q => programming(23),
      R => \^sr\(0)
    );
\int_programming_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[24]_i_1_n_0\,
      Q => programming(24),
      R => \^sr\(0)
    );
\int_programming_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[25]_i_1_n_0\,
      Q => programming(25),
      R => \^sr\(0)
    );
\int_programming_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[26]_i_1_n_0\,
      Q => programming(26),
      R => \^sr\(0)
    );
\int_programming_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[27]_i_1_n_0\,
      Q => programming(27),
      R => \^sr\(0)
    );
\int_programming_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[28]_i_1_n_0\,
      Q => programming(28),
      R => \^sr\(0)
    );
\int_programming_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[29]_i_1_n_0\,
      Q => programming(29),
      R => \^sr\(0)
    );
\int_programming_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[2]_i_1_n_0\,
      Q => programming(2),
      R => \^sr\(0)
    );
\int_programming_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[30]_i_1_n_0\,
      Q => programming(30),
      R => \^sr\(0)
    );
\int_programming_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[31]_i_2_n_0\,
      Q => programming(31),
      R => \^sr\(0)
    );
\int_programming_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[3]_i_1_n_0\,
      Q => programming(3),
      R => \^sr\(0)
    );
\int_programming_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[4]_i_1_n_0\,
      Q => programming(4),
      R => \^sr\(0)
    );
\int_programming_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[5]_i_1_n_0\,
      Q => programming(5),
      R => \^sr\(0)
    );
\int_programming_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[6]_i_1_n_0\,
      Q => programming(6),
      R => \^sr\(0)
    );
\int_programming_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[7]_i_1_n_0\,
      Q => programming(7),
      R => \^sr\(0)
    );
\int_programming_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[8]_i_1_n_0\,
      Q => programming(8),
      R => \^sr\(0)
    );
\int_programming_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in3_out,
      D => \int_programming[9]_i_1_n_0\,
      Q => programming(9),
      R => \^sr\(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => programming(0),
      I2 => \rdata[0]_i_3_n_0\,
      I3 => ar_hs,
      I4 => \^s_axi_axilites_rdata\(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800000008000"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(3),
      I1 => s_axi_AXILiteS_ARADDR(4),
      I2 => \rdata[0]_i_4_n_0\,
      I3 => int_programSafe(0),
      I4 => s_axi_AXILiteS_ARADDR(2),
      I5 => int_programSafe_ap_vld,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(0),
      I1 => s_axi_AXILiteS_ARADDR(1),
      I2 => s_axi_AXILiteS_ARADDR(2),
      I3 => s_axi_AXILiteS_ARADDR(3),
      I4 => s_axi_AXILiteS_ARADDR(4),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(0),
      I1 => s_axi_AXILiteS_ARADDR(1),
      O => \rdata[0]_i_4_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA2"
    )
        port map (
      I0 => ar_hs,
      I1 => s_axi_AXILiteS_ARADDR(4),
      I2 => s_axi_AXILiteS_ARADDR(3),
      I3 => s_axi_AXILiteS_ARADDR(2),
      I4 => s_axi_AXILiteS_ARADDR(1),
      I5 => s_axi_AXILiteS_ARADDR(0),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_axilites_rvalid\,
      I1 => s_axi_AXILiteS_ARVALID,
      I2 => ap_rst_n,
      O => ar_hs
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata[0]_i_1_n_0\,
      Q => \^s_axi_axilites_rdata\(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(10),
      Q => \^s_axi_axilites_rdata\(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(11),
      Q => \^s_axi_axilites_rdata\(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(12),
      Q => \^s_axi_axilites_rdata\(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(13),
      Q => \^s_axi_axilites_rdata\(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(14),
      Q => \^s_axi_axilites_rdata\(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(15),
      Q => \^s_axi_axilites_rdata\(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(16),
      Q => \^s_axi_axilites_rdata\(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(17),
      Q => \^s_axi_axilites_rdata\(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(18),
      Q => \^s_axi_axilites_rdata\(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(19),
      Q => \^s_axi_axilites_rdata\(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(1),
      Q => \^s_axi_axilites_rdata\(1),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(20),
      Q => \^s_axi_axilites_rdata\(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(21),
      Q => \^s_axi_axilites_rdata\(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(22),
      Q => \^s_axi_axilites_rdata\(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(23),
      Q => \^s_axi_axilites_rdata\(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(24),
      Q => \^s_axi_axilites_rdata\(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(25),
      Q => \^s_axi_axilites_rdata\(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(26),
      Q => \^s_axi_axilites_rdata\(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(27),
      Q => \^s_axi_axilites_rdata\(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(28),
      Q => \^s_axi_axilites_rdata\(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(29),
      Q => \^s_axi_axilites_rdata\(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(2),
      Q => \^s_axi_axilites_rdata\(2),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(30),
      Q => \^s_axi_axilites_rdata\(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(31),
      Q => \^s_axi_axilites_rdata\(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(3),
      Q => \^s_axi_axilites_rdata\(3),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(4),
      Q => \^s_axi_axilites_rdata\(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(5),
      Q => \^s_axi_axilites_rdata\(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(6),
      Q => \^s_axi_axilites_rdata\(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(7),
      Q => \^s_axi_axilites_rdata\(7),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(8),
      Q => \^s_axi_axilites_rdata\(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => programming(9),
      Q => \^s_axi_axilites_rdata\(9),
      R => \rdata[31]_i_1_n_0\
    );
\rstate[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\rstate[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_AXILiteS_RREADY,
      I1 => \^s_axi_axilites_rvalid\,
      I2 => s_axi_AXILiteS_ARVALID,
      O => \rstate[0]_i_2_n_0\
    );
\rstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rstate[0]_i_2_n_0\,
      Q => \^s_axi_axilites_rvalid\,
      R => \^sr\(0)
    );
s_axi_AXILiteS_ARREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^s_axi_axilites_rvalid\,
      O => s_axi_AXILiteS_ARREADY
    );
s_axi_AXILiteS_AWREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wstate(1),
      I1 => ap_rst_n,
      I2 => wstate(0),
      O => s_axi_AXILiteS_AWREADY
    );
s_axi_AXILiteS_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wstate(1),
      I1 => wstate(0),
      O => s_axi_AXILiteS_BVALID
    );
s_axi_AXILiteS_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wstate(0),
      I1 => wstate(1),
      O => s_axi_AXILiteS_WREADY
    );
\tmp_1_reg_127[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => packetIn_TVALID,
      I1 => Q(0),
      I2 => \ap_CS_fsm[3]_i_3_n_0\,
      I3 => \ap_CS_fsm[3]_i_4_n_0\,
      I4 => \ap_CS_fsm[3]_i_5_n_0\,
      I5 => \tmp_1_reg_127_reg[0]_1\,
      O => \tmp_1_reg_127_reg[0]\
    );
\tmp_reg_123[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_3_n_0\,
      I1 => \ap_CS_fsm[3]_i_4_n_0\,
      I2 => \ap_CS_fsm[3]_i_5_n_0\,
      I3 => Q(0),
      I4 => \tmp_reg_123_reg[0]_0\,
      O => \tmp_reg_123_reg[0]\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => wstate(1),
      I1 => wstate(0),
      I2 => ap_rst_n,
      I3 => s_axi_AXILiteS_AWVALID,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\wstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0074"
    )
        port map (
      I0 => s_axi_AXILiteS_WVALID,
      I1 => wstate(0),
      I2 => s_axi_AXILiteS_AWVALID,
      I3 => wstate(1),
      O => \wstate[0]_i_1_n_0\
    );
\wstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05C0"
    )
        port map (
      I0 => s_axi_AXILiteS_BREADY,
      I1 => s_axi_AXILiteS_WVALID,
      I2 => wstate(0),
      I3 => wstate(1),
      O => \wstate[1]_i_1_n_0\
    );
\wstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \wstate[0]_i_1_n_0\,
      Q => wstate(0),
      R => \^sr\(0)
    );
\wstate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \wstate[1]_i_1_n_0\,
      Q => wstate(1),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    packetIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    packetIn_TVALID : in STD_LOGIC;
    packetIn_TREADY : out STD_LOGIC;
    packetIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    packetIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    packetOut_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    packetOut_TVALID : out STD_LOGIC;
    packetOut_TREADY : in STD_LOGIC;
    packetOut_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    packetOut_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_S_AXI_AXILITES_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 5;
  attribute C_S_AXI_AXILITES_DATA_WIDTH : integer;
  attribute C_S_AXI_AXILITES_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 32;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "5'b00001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "5'b00010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "5'b00100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "5'b01000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "5'b10000";
  attribute ap_const_int64_8 : integer;
  attribute ap_const_int64_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 8;
  attribute ap_const_lv2_0 : string;
  attribute ap_const_lv2_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "2'b00";
  attribute ap_const_lv2_1 : string;
  attribute ap_const_lv2_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "2'b01";
  attribute ap_const_lv2_2 : string;
  attribute ap_const_lv2_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "2'b10";
  attribute ap_const_lv2_3 : string;
  attribute ap_const_lv2_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "2'b11";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 0;
  attribute ap_const_lv32_1 : integer;
  attribute ap_const_lv32_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 1;
  attribute ap_const_lv32_2 : integer;
  attribute ap_const_lv32_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 2;
  attribute ap_const_lv32_3 : integer;
  attribute ap_const_lv32_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is 3;
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[4]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal ap_reg_ioackin_programSafe_dummy_ack : STD_LOGIC;
  signal ap_reg_ioackin_programSafe_dummy_ack_i_1_n_0 : STD_LOGIC;
  signal ap_reg_ioackin_programSafe_dummy_ack_i_2_n_0 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal axiStreamGate_AXILiteS_s_axi_U_n_10 : STD_LOGIC;
  signal axiStreamGate_AXILiteS_s_axi_U_n_6 : STD_LOGIC;
  signal axiStreamGate_AXILiteS_s_axi_U_n_9 : STD_LOGIC;
  signal \^packetout_tvalid\ : STD_LOGIC;
  signal packetOut_V_data_V_1_ack_in : STD_LOGIC;
  signal packetOut_V_data_V_1_load_A : STD_LOGIC;
  signal packetOut_V_data_V_1_load_B : STD_LOGIC;
  signal packetOut_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal packetOut_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal packetOut_V_data_V_1_sel : STD_LOGIC;
  signal packetOut_V_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal packetOut_V_data_V_1_sel_wr : STD_LOGIC;
  signal packetOut_V_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal packetOut_V_data_V_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \packetOut_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \packetOut_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal packetOut_V_keep_V_1_ack_in : STD_LOGIC;
  signal packetOut_V_keep_V_1_load_A : STD_LOGIC;
  signal packetOut_V_keep_V_1_load_B : STD_LOGIC;
  signal packetOut_V_keep_V_1_payload_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal packetOut_V_keep_V_1_payload_B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal packetOut_V_keep_V_1_sel : STD_LOGIC;
  signal packetOut_V_keep_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal packetOut_V_keep_V_1_sel_wr : STD_LOGIC;
  signal packetOut_V_keep_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal packetOut_V_keep_V_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \packetOut_V_keep_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \packetOut_V_keep_V_1_state[0]_i_2_n_0\ : STD_LOGIC;
  signal packetOut_V_last_V_1_ack_in : STD_LOGIC;
  signal packetOut_V_last_V_1_payload_A : STD_LOGIC;
  signal \packetOut_V_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal packetOut_V_last_V_1_payload_B : STD_LOGIC;
  signal \packetOut_V_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal packetOut_V_last_V_1_sel : STD_LOGIC;
  signal packetOut_V_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal packetOut_V_last_V_1_sel_wr : STD_LOGIC;
  signal packetOut_V_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal packetOut_V_last_V_1_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \packetOut_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \packetOut_V_last_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_1_reg_127_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_last_V_reg_136[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_last_V_reg_136_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_reg_123_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair22";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute SOFT_HLUTNM of ap_reg_ioackin_programSafe_dummy_ack_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of packetIn_TREADY_INST_0 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \packetOut_TDATA[0]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \packetOut_TDATA[10]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \packetOut_TDATA[11]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \packetOut_TDATA[12]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \packetOut_TDATA[13]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \packetOut_TDATA[14]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \packetOut_TDATA[15]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \packetOut_TDATA[16]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \packetOut_TDATA[17]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \packetOut_TDATA[18]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \packetOut_TDATA[19]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \packetOut_TDATA[1]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \packetOut_TDATA[20]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \packetOut_TDATA[21]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \packetOut_TDATA[22]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \packetOut_TDATA[23]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \packetOut_TDATA[24]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \packetOut_TDATA[25]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \packetOut_TDATA[26]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \packetOut_TDATA[27]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \packetOut_TDATA[28]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \packetOut_TDATA[29]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \packetOut_TDATA[2]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \packetOut_TDATA[30]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \packetOut_TDATA[31]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \packetOut_TDATA[32]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \packetOut_TDATA[33]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \packetOut_TDATA[34]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \packetOut_TDATA[35]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \packetOut_TDATA[36]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \packetOut_TDATA[37]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \packetOut_TDATA[38]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \packetOut_TDATA[39]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \packetOut_TDATA[3]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \packetOut_TDATA[40]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \packetOut_TDATA[41]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \packetOut_TDATA[42]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \packetOut_TDATA[43]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \packetOut_TDATA[44]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \packetOut_TDATA[45]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \packetOut_TDATA[46]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \packetOut_TDATA[47]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \packetOut_TDATA[48]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \packetOut_TDATA[49]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \packetOut_TDATA[4]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \packetOut_TDATA[50]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \packetOut_TDATA[51]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \packetOut_TDATA[52]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \packetOut_TDATA[53]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \packetOut_TDATA[54]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \packetOut_TDATA[55]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \packetOut_TDATA[56]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \packetOut_TDATA[57]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \packetOut_TDATA[58]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \packetOut_TDATA[59]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \packetOut_TDATA[5]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \packetOut_TDATA[60]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \packetOut_TDATA[61]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \packetOut_TDATA[62]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \packetOut_TDATA[6]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \packetOut_TDATA[7]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \packetOut_TDATA[8]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \packetOut_TDATA[9]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[0]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[1]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[2]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[3]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[4]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[5]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[6]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \packetOut_TKEEP[7]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of packetOut_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of packetOut_V_keep_V_1_sel_rd_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of packetOut_V_keep_V_1_sel_wr_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \packetOut_V_keep_V_1_state[0]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of packetOut_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair25";
begin
  packetOut_TVALID <= \^packetout_tvalid\;
  s_axi_AXILiteS_BRESP(1) <= \<const0>\;
  s_axi_AXILiteS_BRESP(0) <= \<const0>\;
  s_axi_AXILiteS_RRESP(1) <= \<const0>\;
  s_axi_AXILiteS_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => \ap_CS_fsm_reg_n_0_[4]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FAA22AA"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => packetIn_TVALID,
      I2 => axiStreamGate_AXILiteS_s_axi_U_n_6,
      I3 => packetOut_V_data_V_1_ack_in,
      I4 => ap_CS_fsm_state4,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80008000800080"
    )
        port map (
      I0 => \tmp_1_reg_127_reg_n_0_[0]\,
      I1 => \tmp_reg_123_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state4,
      I3 => packetOut_V_data_V_1_ack_in,
      I4 => ap_CS_fsm_state3,
      I5 => packetIn_TVALID,
      O => \ap_CS_fsm[3]_i_2_n_0\
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7770000"
    )
        port map (
      I0 => \tmp_1_reg_127_reg_n_0_[0]\,
      I1 => \tmp_reg_123_reg_n_0_[0]\,
      I2 => packetOut_V_data_V_1_ack_in,
      I3 => \tmp_last_V_reg_136_reg_n_0_[0]\,
      I4 => ap_CS_fsm_state4,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => '0',
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => \ap_CS_fsm_reg_n_0_[4]\,
      R => ap_rst_n_inv
    );
ap_reg_ioackin_programSafe_dummy_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C080888888888"
    )
        port map (
      I0 => ap_reg_ioackin_programSafe_dummy_ack,
      I1 => ap_rst_n,
      I2 => ap_reg_ioackin_programSafe_dummy_ack_i_2_n_0,
      I3 => packetOut_V_data_V_1_ack_in,
      I4 => \tmp_last_V_reg_136_reg_n_0_[0]\,
      I5 => ap_CS_fsm_state4,
      O => ap_reg_ioackin_programSafe_dummy_ack_i_1_n_0
    );
ap_reg_ioackin_programSafe_dummy_ack_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \tmp_1_reg_127_reg_n_0_[0]\,
      I1 => \tmp_reg_123_reg_n_0_[0]\,
      O => ap_reg_ioackin_programSafe_dummy_ack_i_2_n_0
    );
ap_reg_ioackin_programSafe_dummy_ack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_reg_ioackin_programSafe_dummy_ack_i_1_n_0,
      Q => ap_reg_ioackin_programSafe_dummy_ack,
      R => '0'
    );
axiStreamGate_AXILiteS_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate_AXILiteS_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(3 downto 2),
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state2,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[2]\ => \ap_CS_fsm[2]_i_2_n_0\,
      ap_clk => ap_clk,
      ap_reg_ioackin_programSafe_dummy_ack => ap_reg_ioackin_programSafe_dummy_ack,
      ap_rst_n => ap_rst_n,
      \int_programSafe_reg[0]_0\ => axiStreamGate_AXILiteS_s_axi_U_n_6,
      packetIn_TVALID => packetIn_TVALID,
      s_axi_AXILiteS_ARADDR(4 downto 0) => s_axi_AXILiteS_ARADDR(4 downto 0),
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_AWADDR(4 downto 0) => s_axi_AXILiteS_AWADDR(4 downto 0),
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => s_axi_AXILiteS_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => s_axi_AXILiteS_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => s_axi_AXILiteS_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
      \tmp_1_reg_127_reg[0]\ => axiStreamGate_AXILiteS_s_axi_U_n_10,
      \tmp_1_reg_127_reg[0]_0\ => \ap_CS_fsm[3]_i_2_n_0\,
      \tmp_1_reg_127_reg[0]_1\ => \tmp_1_reg_127_reg_n_0_[0]\,
      \tmp_last_V_reg_136_reg[0]\ => \tmp_last_V_reg_136_reg_n_0_[0]\,
      \tmp_reg_123_reg[0]\ => axiStreamGate_AXILiteS_s_axi_U_n_9,
      \tmp_reg_123_reg[0]_0\ => \tmp_reg_123_reg_n_0_[0]\
    );
packetIn_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => packetOut_V_data_V_1_ack_in,
      I1 => ap_CS_fsm_state3,
      I2 => packetIn_TVALID,
      O => packetIn_TREADY
    );
\packetOut_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(0),
      I1 => packetOut_V_data_V_1_payload_A(0),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(0)
    );
\packetOut_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(10),
      I1 => packetOut_V_data_V_1_payload_A(10),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(10)
    );
\packetOut_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(11),
      I1 => packetOut_V_data_V_1_payload_A(11),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(11)
    );
\packetOut_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(12),
      I1 => packetOut_V_data_V_1_payload_A(12),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(12)
    );
\packetOut_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(13),
      I1 => packetOut_V_data_V_1_payload_A(13),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(13)
    );
\packetOut_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(14),
      I1 => packetOut_V_data_V_1_payload_A(14),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(14)
    );
\packetOut_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(15),
      I1 => packetOut_V_data_V_1_payload_A(15),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(15)
    );
\packetOut_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(16),
      I1 => packetOut_V_data_V_1_payload_A(16),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(16)
    );
\packetOut_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(17),
      I1 => packetOut_V_data_V_1_payload_A(17),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(17)
    );
\packetOut_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(18),
      I1 => packetOut_V_data_V_1_payload_A(18),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(18)
    );
\packetOut_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(19),
      I1 => packetOut_V_data_V_1_payload_A(19),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(19)
    );
\packetOut_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(1),
      I1 => packetOut_V_data_V_1_payload_A(1),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(1)
    );
\packetOut_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(20),
      I1 => packetOut_V_data_V_1_payload_A(20),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(20)
    );
\packetOut_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(21),
      I1 => packetOut_V_data_V_1_payload_A(21),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(21)
    );
\packetOut_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(22),
      I1 => packetOut_V_data_V_1_payload_A(22),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(22)
    );
\packetOut_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(23),
      I1 => packetOut_V_data_V_1_payload_A(23),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(23)
    );
\packetOut_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(24),
      I1 => packetOut_V_data_V_1_payload_A(24),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(24)
    );
\packetOut_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(25),
      I1 => packetOut_V_data_V_1_payload_A(25),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(25)
    );
\packetOut_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(26),
      I1 => packetOut_V_data_V_1_payload_A(26),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(26)
    );
\packetOut_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(27),
      I1 => packetOut_V_data_V_1_payload_A(27),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(27)
    );
\packetOut_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(28),
      I1 => packetOut_V_data_V_1_payload_A(28),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(28)
    );
\packetOut_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(29),
      I1 => packetOut_V_data_V_1_payload_A(29),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(29)
    );
\packetOut_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(2),
      I1 => packetOut_V_data_V_1_payload_A(2),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(2)
    );
\packetOut_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(30),
      I1 => packetOut_V_data_V_1_payload_A(30),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(30)
    );
\packetOut_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(31),
      I1 => packetOut_V_data_V_1_payload_A(31),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(31)
    );
\packetOut_TDATA[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(32),
      I1 => packetOut_V_data_V_1_payload_A(32),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(32)
    );
\packetOut_TDATA[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(33),
      I1 => packetOut_V_data_V_1_payload_A(33),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(33)
    );
\packetOut_TDATA[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(34),
      I1 => packetOut_V_data_V_1_payload_A(34),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(34)
    );
\packetOut_TDATA[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(35),
      I1 => packetOut_V_data_V_1_payload_A(35),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(35)
    );
\packetOut_TDATA[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(36),
      I1 => packetOut_V_data_V_1_payload_A(36),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(36)
    );
\packetOut_TDATA[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(37),
      I1 => packetOut_V_data_V_1_payload_A(37),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(37)
    );
\packetOut_TDATA[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(38),
      I1 => packetOut_V_data_V_1_payload_A(38),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(38)
    );
\packetOut_TDATA[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(39),
      I1 => packetOut_V_data_V_1_payload_A(39),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(39)
    );
\packetOut_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(3),
      I1 => packetOut_V_data_V_1_payload_A(3),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(3)
    );
\packetOut_TDATA[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(40),
      I1 => packetOut_V_data_V_1_payload_A(40),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(40)
    );
\packetOut_TDATA[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(41),
      I1 => packetOut_V_data_V_1_payload_A(41),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(41)
    );
\packetOut_TDATA[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(42),
      I1 => packetOut_V_data_V_1_payload_A(42),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(42)
    );
\packetOut_TDATA[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(43),
      I1 => packetOut_V_data_V_1_payload_A(43),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(43)
    );
\packetOut_TDATA[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(44),
      I1 => packetOut_V_data_V_1_payload_A(44),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(44)
    );
\packetOut_TDATA[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(45),
      I1 => packetOut_V_data_V_1_payload_A(45),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(45)
    );
\packetOut_TDATA[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(46),
      I1 => packetOut_V_data_V_1_payload_A(46),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(46)
    );
\packetOut_TDATA[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(47),
      I1 => packetOut_V_data_V_1_payload_A(47),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(47)
    );
\packetOut_TDATA[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(48),
      I1 => packetOut_V_data_V_1_payload_A(48),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(48)
    );
\packetOut_TDATA[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(49),
      I1 => packetOut_V_data_V_1_payload_A(49),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(49)
    );
\packetOut_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(4),
      I1 => packetOut_V_data_V_1_payload_A(4),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(4)
    );
\packetOut_TDATA[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(50),
      I1 => packetOut_V_data_V_1_payload_A(50),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(50)
    );
\packetOut_TDATA[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(51),
      I1 => packetOut_V_data_V_1_payload_A(51),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(51)
    );
\packetOut_TDATA[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(52),
      I1 => packetOut_V_data_V_1_payload_A(52),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(52)
    );
\packetOut_TDATA[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(53),
      I1 => packetOut_V_data_V_1_payload_A(53),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(53)
    );
\packetOut_TDATA[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(54),
      I1 => packetOut_V_data_V_1_payload_A(54),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(54)
    );
\packetOut_TDATA[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(55),
      I1 => packetOut_V_data_V_1_payload_A(55),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(55)
    );
\packetOut_TDATA[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(56),
      I1 => packetOut_V_data_V_1_payload_A(56),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(56)
    );
\packetOut_TDATA[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(57),
      I1 => packetOut_V_data_V_1_payload_A(57),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(57)
    );
\packetOut_TDATA[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(58),
      I1 => packetOut_V_data_V_1_payload_A(58),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(58)
    );
\packetOut_TDATA[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(59),
      I1 => packetOut_V_data_V_1_payload_A(59),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(59)
    );
\packetOut_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(5),
      I1 => packetOut_V_data_V_1_payload_A(5),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(5)
    );
\packetOut_TDATA[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(60),
      I1 => packetOut_V_data_V_1_payload_A(60),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(60)
    );
\packetOut_TDATA[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(61),
      I1 => packetOut_V_data_V_1_payload_A(61),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(61)
    );
\packetOut_TDATA[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(62),
      I1 => packetOut_V_data_V_1_payload_A(62),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(62)
    );
\packetOut_TDATA[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(63),
      I1 => packetOut_V_data_V_1_payload_A(63),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(63)
    );
\packetOut_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(6),
      I1 => packetOut_V_data_V_1_payload_A(6),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(6)
    );
\packetOut_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(7),
      I1 => packetOut_V_data_V_1_payload_A(7),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(7)
    );
\packetOut_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(8),
      I1 => packetOut_V_data_V_1_payload_A(8),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(8)
    );
\packetOut_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_data_V_1_payload_B(9),
      I1 => packetOut_V_data_V_1_payload_A(9),
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_TDATA(9)
    );
\packetOut_TKEEP[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(0),
      I1 => packetOut_V_keep_V_1_payload_A(0),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(0)
    );
\packetOut_TKEEP[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(1),
      I1 => packetOut_V_keep_V_1_payload_A(1),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(1)
    );
\packetOut_TKEEP[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(2),
      I1 => packetOut_V_keep_V_1_payload_A(2),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(2)
    );
\packetOut_TKEEP[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(3),
      I1 => packetOut_V_keep_V_1_payload_A(3),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(3)
    );
\packetOut_TKEEP[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(4),
      I1 => packetOut_V_keep_V_1_payload_A(4),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(4)
    );
\packetOut_TKEEP[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(5),
      I1 => packetOut_V_keep_V_1_payload_A(5),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(5)
    );
\packetOut_TKEEP[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(6),
      I1 => packetOut_V_keep_V_1_payload_A(6),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(6)
    );
\packetOut_TKEEP[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => packetOut_V_keep_V_1_payload_B(7),
      I1 => packetOut_V_keep_V_1_payload_A(7),
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_TKEEP(7)
    );
\packetOut_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => packetOut_V_last_V_1_payload_B,
      I1 => packetOut_V_last_V_1_sel,
      I2 => packetOut_V_last_V_1_payload_A,
      O => packetOut_TLAST(0)
    );
\packetOut_V_data_V_1_payload_A[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \packetOut_V_data_V_1_state_reg_n_0_[0]\,
      I1 => packetOut_V_data_V_1_ack_in,
      I2 => packetOut_V_data_V_1_sel_wr,
      O => packetOut_V_data_V_1_load_A
    );
\packetOut_V_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(0),
      Q => packetOut_V_data_V_1_payload_A(0),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(10),
      Q => packetOut_V_data_V_1_payload_A(10),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(11),
      Q => packetOut_V_data_V_1_payload_A(11),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(12),
      Q => packetOut_V_data_V_1_payload_A(12),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(13),
      Q => packetOut_V_data_V_1_payload_A(13),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(14),
      Q => packetOut_V_data_V_1_payload_A(14),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(15),
      Q => packetOut_V_data_V_1_payload_A(15),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(16),
      Q => packetOut_V_data_V_1_payload_A(16),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(17),
      Q => packetOut_V_data_V_1_payload_A(17),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(18),
      Q => packetOut_V_data_V_1_payload_A(18),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(19),
      Q => packetOut_V_data_V_1_payload_A(19),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(1),
      Q => packetOut_V_data_V_1_payload_A(1),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(20),
      Q => packetOut_V_data_V_1_payload_A(20),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(21),
      Q => packetOut_V_data_V_1_payload_A(21),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(22),
      Q => packetOut_V_data_V_1_payload_A(22),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(23),
      Q => packetOut_V_data_V_1_payload_A(23),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(24),
      Q => packetOut_V_data_V_1_payload_A(24),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(25),
      Q => packetOut_V_data_V_1_payload_A(25),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(26),
      Q => packetOut_V_data_V_1_payload_A(26),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(27),
      Q => packetOut_V_data_V_1_payload_A(27),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(28),
      Q => packetOut_V_data_V_1_payload_A(28),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(29),
      Q => packetOut_V_data_V_1_payload_A(29),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(2),
      Q => packetOut_V_data_V_1_payload_A(2),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(30),
      Q => packetOut_V_data_V_1_payload_A(30),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(31),
      Q => packetOut_V_data_V_1_payload_A(31),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(32),
      Q => packetOut_V_data_V_1_payload_A(32),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(33),
      Q => packetOut_V_data_V_1_payload_A(33),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(34),
      Q => packetOut_V_data_V_1_payload_A(34),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(35),
      Q => packetOut_V_data_V_1_payload_A(35),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(36),
      Q => packetOut_V_data_V_1_payload_A(36),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(37),
      Q => packetOut_V_data_V_1_payload_A(37),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(38),
      Q => packetOut_V_data_V_1_payload_A(38),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(39),
      Q => packetOut_V_data_V_1_payload_A(39),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(3),
      Q => packetOut_V_data_V_1_payload_A(3),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(40),
      Q => packetOut_V_data_V_1_payload_A(40),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(41),
      Q => packetOut_V_data_V_1_payload_A(41),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(42),
      Q => packetOut_V_data_V_1_payload_A(42),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(43),
      Q => packetOut_V_data_V_1_payload_A(43),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(44),
      Q => packetOut_V_data_V_1_payload_A(44),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(45),
      Q => packetOut_V_data_V_1_payload_A(45),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(46),
      Q => packetOut_V_data_V_1_payload_A(46),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(47),
      Q => packetOut_V_data_V_1_payload_A(47),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(48),
      Q => packetOut_V_data_V_1_payload_A(48),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(49),
      Q => packetOut_V_data_V_1_payload_A(49),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(4),
      Q => packetOut_V_data_V_1_payload_A(4),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(50),
      Q => packetOut_V_data_V_1_payload_A(50),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(51),
      Q => packetOut_V_data_V_1_payload_A(51),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(52),
      Q => packetOut_V_data_V_1_payload_A(52),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(53),
      Q => packetOut_V_data_V_1_payload_A(53),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(54),
      Q => packetOut_V_data_V_1_payload_A(54),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(55),
      Q => packetOut_V_data_V_1_payload_A(55),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(56),
      Q => packetOut_V_data_V_1_payload_A(56),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(57),
      Q => packetOut_V_data_V_1_payload_A(57),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(58),
      Q => packetOut_V_data_V_1_payload_A(58),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(59),
      Q => packetOut_V_data_V_1_payload_A(59),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(5),
      Q => packetOut_V_data_V_1_payload_A(5),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(60),
      Q => packetOut_V_data_V_1_payload_A(60),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(61),
      Q => packetOut_V_data_V_1_payload_A(61),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(62),
      Q => packetOut_V_data_V_1_payload_A(62),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(63),
      Q => packetOut_V_data_V_1_payload_A(63),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(6),
      Q => packetOut_V_data_V_1_payload_A(6),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(7),
      Q => packetOut_V_data_V_1_payload_A(7),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(8),
      Q => packetOut_V_data_V_1_payload_A(8),
      R => '0'
    );
\packetOut_V_data_V_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_A,
      D => packetIn_TDATA(9),
      Q => packetOut_V_data_V_1_payload_A(9),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \packetOut_V_data_V_1_state_reg_n_0_[0]\,
      I1 => packetOut_V_data_V_1_ack_in,
      I2 => packetOut_V_data_V_1_sel_wr,
      O => packetOut_V_data_V_1_load_B
    );
\packetOut_V_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(0),
      Q => packetOut_V_data_V_1_payload_B(0),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(10),
      Q => packetOut_V_data_V_1_payload_B(10),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(11),
      Q => packetOut_V_data_V_1_payload_B(11),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(12),
      Q => packetOut_V_data_V_1_payload_B(12),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(13),
      Q => packetOut_V_data_V_1_payload_B(13),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(14),
      Q => packetOut_V_data_V_1_payload_B(14),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(15),
      Q => packetOut_V_data_V_1_payload_B(15),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(16),
      Q => packetOut_V_data_V_1_payload_B(16),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(17),
      Q => packetOut_V_data_V_1_payload_B(17),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(18),
      Q => packetOut_V_data_V_1_payload_B(18),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(19),
      Q => packetOut_V_data_V_1_payload_B(19),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(1),
      Q => packetOut_V_data_V_1_payload_B(1),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(20),
      Q => packetOut_V_data_V_1_payload_B(20),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(21),
      Q => packetOut_V_data_V_1_payload_B(21),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(22),
      Q => packetOut_V_data_V_1_payload_B(22),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(23),
      Q => packetOut_V_data_V_1_payload_B(23),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(24),
      Q => packetOut_V_data_V_1_payload_B(24),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(25),
      Q => packetOut_V_data_V_1_payload_B(25),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(26),
      Q => packetOut_V_data_V_1_payload_B(26),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(27),
      Q => packetOut_V_data_V_1_payload_B(27),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(28),
      Q => packetOut_V_data_V_1_payload_B(28),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(29),
      Q => packetOut_V_data_V_1_payload_B(29),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(2),
      Q => packetOut_V_data_V_1_payload_B(2),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(30),
      Q => packetOut_V_data_V_1_payload_B(30),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(31),
      Q => packetOut_V_data_V_1_payload_B(31),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(32),
      Q => packetOut_V_data_V_1_payload_B(32),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(33),
      Q => packetOut_V_data_V_1_payload_B(33),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(34),
      Q => packetOut_V_data_V_1_payload_B(34),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(35),
      Q => packetOut_V_data_V_1_payload_B(35),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(36),
      Q => packetOut_V_data_V_1_payload_B(36),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(37),
      Q => packetOut_V_data_V_1_payload_B(37),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(38),
      Q => packetOut_V_data_V_1_payload_B(38),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(39),
      Q => packetOut_V_data_V_1_payload_B(39),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(3),
      Q => packetOut_V_data_V_1_payload_B(3),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(40),
      Q => packetOut_V_data_V_1_payload_B(40),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(41),
      Q => packetOut_V_data_V_1_payload_B(41),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(42),
      Q => packetOut_V_data_V_1_payload_B(42),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(43),
      Q => packetOut_V_data_V_1_payload_B(43),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(44),
      Q => packetOut_V_data_V_1_payload_B(44),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(45),
      Q => packetOut_V_data_V_1_payload_B(45),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(46),
      Q => packetOut_V_data_V_1_payload_B(46),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(47),
      Q => packetOut_V_data_V_1_payload_B(47),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(48),
      Q => packetOut_V_data_V_1_payload_B(48),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(49),
      Q => packetOut_V_data_V_1_payload_B(49),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(4),
      Q => packetOut_V_data_V_1_payload_B(4),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(50),
      Q => packetOut_V_data_V_1_payload_B(50),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(51),
      Q => packetOut_V_data_V_1_payload_B(51),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(52),
      Q => packetOut_V_data_V_1_payload_B(52),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(53),
      Q => packetOut_V_data_V_1_payload_B(53),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(54),
      Q => packetOut_V_data_V_1_payload_B(54),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(55),
      Q => packetOut_V_data_V_1_payload_B(55),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(56),
      Q => packetOut_V_data_V_1_payload_B(56),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(57),
      Q => packetOut_V_data_V_1_payload_B(57),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(58),
      Q => packetOut_V_data_V_1_payload_B(58),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(59),
      Q => packetOut_V_data_V_1_payload_B(59),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(5),
      Q => packetOut_V_data_V_1_payload_B(5),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(60),
      Q => packetOut_V_data_V_1_payload_B(60),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(61),
      Q => packetOut_V_data_V_1_payload_B(61),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(62),
      Q => packetOut_V_data_V_1_payload_B(62),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(63),
      Q => packetOut_V_data_V_1_payload_B(63),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(6),
      Q => packetOut_V_data_V_1_payload_B(6),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(7),
      Q => packetOut_V_data_V_1_payload_B(7),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(8),
      Q => packetOut_V_data_V_1_payload_B(8),
      R => '0'
    );
\packetOut_V_data_V_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_data_V_1_load_B,
      D => packetIn_TDATA(9),
      Q => packetOut_V_data_V_1_payload_B(9),
      R => '0'
    );
packetOut_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \packetOut_V_data_V_1_state_reg_n_0_[0]\,
      I1 => packetOut_TREADY,
      I2 => packetOut_V_data_V_1_sel,
      O => packetOut_V_data_V_1_sel_rd_i_1_n_0
    );
packetOut_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_data_V_1_sel_rd_i_1_n_0,
      Q => packetOut_V_data_V_1_sel,
      R => ap_rst_n_inv
    );
packetOut_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => packetOut_V_data_V_1_ack_in,
      I1 => ap_CS_fsm_state3,
      I2 => packetIn_TVALID,
      I3 => packetOut_V_data_V_1_sel_wr,
      O => packetOut_V_data_V_1_sel_wr_i_1_n_0
    );
packetOut_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_data_V_1_sel_wr_i_1_n_0,
      Q => packetOut_V_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\packetOut_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2228000AAAA8000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => packetOut_V_data_V_1_ack_in,
      I2 => ap_CS_fsm_state3,
      I3 => packetIn_TVALID,
      I4 => \packetOut_V_data_V_1_state_reg_n_0_[0]\,
      I5 => packetOut_TREADY,
      O => \packetOut_V_data_V_1_state[0]_i_1_n_0\
    );
\packetOut_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AFF"
    )
        port map (
      I0 => packetOut_V_data_V_1_ack_in,
      I1 => ap_CS_fsm_state3,
      I2 => packetIn_TVALID,
      I3 => \packetOut_V_data_V_1_state_reg_n_0_[0]\,
      I4 => packetOut_TREADY,
      O => packetOut_V_data_V_1_state(1)
    );
\packetOut_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \packetOut_V_data_V_1_state[0]_i_1_n_0\,
      Q => \packetOut_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\packetOut_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_data_V_1_state(1),
      Q => packetOut_V_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\packetOut_V_keep_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^packetout_tvalid\,
      I1 => packetOut_V_keep_V_1_ack_in,
      I2 => packetOut_V_keep_V_1_sel_wr,
      O => packetOut_V_keep_V_1_load_A
    );
\packetOut_V_keep_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(0),
      Q => packetOut_V_keep_V_1_payload_A(0),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(1),
      Q => packetOut_V_keep_V_1_payload_A(1),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(2),
      Q => packetOut_V_keep_V_1_payload_A(2),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(3),
      Q => packetOut_V_keep_V_1_payload_A(3),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(4),
      Q => packetOut_V_keep_V_1_payload_A(4),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(5),
      Q => packetOut_V_keep_V_1_payload_A(5),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(6),
      Q => packetOut_V_keep_V_1_payload_A(6),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_A,
      D => packetIn_TKEEP(7),
      Q => packetOut_V_keep_V_1_payload_A(7),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^packetout_tvalid\,
      I1 => packetOut_V_keep_V_1_ack_in,
      I2 => packetOut_V_keep_V_1_sel_wr,
      O => packetOut_V_keep_V_1_load_B
    );
\packetOut_V_keep_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(0),
      Q => packetOut_V_keep_V_1_payload_B(0),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(1),
      Q => packetOut_V_keep_V_1_payload_B(1),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(2),
      Q => packetOut_V_keep_V_1_payload_B(2),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(3),
      Q => packetOut_V_keep_V_1_payload_B(3),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(4),
      Q => packetOut_V_keep_V_1_payload_B(4),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(5),
      Q => packetOut_V_keep_V_1_payload_B(5),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(6),
      Q => packetOut_V_keep_V_1_payload_B(6),
      R => '0'
    );
\packetOut_V_keep_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => packetOut_V_keep_V_1_load_B,
      D => packetIn_TKEEP(7),
      Q => packetOut_V_keep_V_1_payload_B(7),
      R => '0'
    );
packetOut_V_keep_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => packetOut_TREADY,
      I1 => \^packetout_tvalid\,
      I2 => packetOut_V_keep_V_1_sel,
      O => packetOut_V_keep_V_1_sel_rd_i_1_n_0
    );
packetOut_V_keep_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_keep_V_1_sel_rd_i_1_n_0,
      Q => packetOut_V_keep_V_1_sel,
      R => ap_rst_n_inv
    );
packetOut_V_keep_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => packetIn_TVALID,
      I1 => ap_CS_fsm_state3,
      I2 => packetOut_V_data_V_1_ack_in,
      I3 => packetOut_V_keep_V_1_ack_in,
      I4 => packetOut_V_keep_V_1_sel_wr,
      O => packetOut_V_keep_V_1_sel_wr_i_1_n_0
    );
packetOut_V_keep_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_keep_V_1_sel_wr_i_1_n_0,
      Q => packetOut_V_keep_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\packetOut_V_keep_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A00AA88"
    )
        port map (
      I0 => ap_rst_n,
      I1 => packetOut_V_keep_V_1_ack_in,
      I2 => packetOut_TREADY,
      I3 => \^packetout_tvalid\,
      I4 => \packetOut_V_keep_V_1_state[0]_i_2_n_0\,
      O => \packetOut_V_keep_V_1_state[0]_i_1_n_0\
    );
\packetOut_V_keep_V_1_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => packetIn_TVALID,
      I1 => ap_CS_fsm_state3,
      I2 => packetOut_V_data_V_1_ack_in,
      O => \packetOut_V_keep_V_1_state[0]_i_2_n_0\
    );
\packetOut_V_keep_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F00FFFF"
    )
        port map (
      I0 => packetIn_TVALID,
      I1 => ap_CS_fsm_state3,
      I2 => packetOut_V_data_V_1_ack_in,
      I3 => packetOut_V_keep_V_1_ack_in,
      I4 => \^packetout_tvalid\,
      I5 => packetOut_TREADY,
      O => packetOut_V_keep_V_1_state(1)
    );
\packetOut_V_keep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \packetOut_V_keep_V_1_state[0]_i_1_n_0\,
      Q => \^packetout_tvalid\,
      R => '0'
    );
\packetOut_V_keep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_keep_V_1_state(1),
      Q => packetOut_V_keep_V_1_ack_in,
      R => ap_rst_n_inv
    );
\packetOut_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => packetIn_TLAST(0),
      I1 => \packetOut_V_last_V_1_state_reg_n_0_[0]\,
      I2 => packetOut_V_last_V_1_ack_in,
      I3 => packetOut_V_last_V_1_sel_wr,
      I4 => packetOut_V_last_V_1_payload_A,
      O => \packetOut_V_last_V_1_payload_A[0]_i_1_n_0\
    );
\packetOut_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \packetOut_V_last_V_1_payload_A[0]_i_1_n_0\,
      Q => packetOut_V_last_V_1_payload_A,
      R => '0'
    );
\packetOut_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => packetIn_TLAST(0),
      I1 => \packetOut_V_last_V_1_state_reg_n_0_[0]\,
      I2 => packetOut_V_last_V_1_ack_in,
      I3 => packetOut_V_last_V_1_sel_wr,
      I4 => packetOut_V_last_V_1_payload_B,
      O => \packetOut_V_last_V_1_payload_B[0]_i_1_n_0\
    );
\packetOut_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \packetOut_V_last_V_1_payload_B[0]_i_1_n_0\,
      Q => packetOut_V_last_V_1_payload_B,
      R => '0'
    );
packetOut_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => packetOut_TREADY,
      I1 => \packetOut_V_last_V_1_state_reg_n_0_[0]\,
      I2 => packetOut_V_last_V_1_sel,
      O => packetOut_V_last_V_1_sel_rd_i_1_n_0
    );
packetOut_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_last_V_1_sel_rd_i_1_n_0,
      Q => packetOut_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
packetOut_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => packetIn_TVALID,
      I1 => ap_CS_fsm_state3,
      I2 => packetOut_V_data_V_1_ack_in,
      I3 => packetOut_V_last_V_1_ack_in,
      I4 => packetOut_V_last_V_1_sel_wr,
      O => packetOut_V_last_V_1_sel_wr_i_1_n_0
    );
packetOut_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_last_V_1_sel_wr_i_1_n_0,
      Q => packetOut_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\packetOut_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A00AA88"
    )
        port map (
      I0 => ap_rst_n,
      I1 => packetOut_V_last_V_1_ack_in,
      I2 => packetOut_TREADY,
      I3 => \packetOut_V_last_V_1_state_reg_n_0_[0]\,
      I4 => \packetOut_V_keep_V_1_state[0]_i_2_n_0\,
      O => \packetOut_V_last_V_1_state[0]_i_1_n_0\
    );
\packetOut_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F00FFFF"
    )
        port map (
      I0 => packetIn_TVALID,
      I1 => ap_CS_fsm_state3,
      I2 => packetOut_V_data_V_1_ack_in,
      I3 => packetOut_V_last_V_1_ack_in,
      I4 => \packetOut_V_last_V_1_state_reg_n_0_[0]\,
      I5 => packetOut_TREADY,
      O => packetOut_V_last_V_1_state(1)
    );
\packetOut_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \packetOut_V_last_V_1_state[0]_i_1_n_0\,
      Q => \packetOut_V_last_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\packetOut_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => packetOut_V_last_V_1_state(1),
      Q => packetOut_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\tmp_1_reg_127_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => axiStreamGate_AXILiteS_s_axi_U_n_10,
      Q => \tmp_1_reg_127_reg_n_0_[0]\,
      R => '0'
    );
\tmp_last_V_reg_136[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA2AAA"
    )
        port map (
      I0 => \tmp_last_V_reg_136_reg_n_0_[0]\,
      I1 => packetIn_TVALID,
      I2 => ap_CS_fsm_state3,
      I3 => packetOut_V_data_V_1_ack_in,
      I4 => packetIn_TLAST(0),
      O => \tmp_last_V_reg_136[0]_i_1_n_0\
    );
\tmp_last_V_reg_136_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_last_V_reg_136[0]_i_1_n_0\,
      Q => \tmp_last_V_reg_136_reg_n_0_[0]\,
      R => '0'
    );
\tmp_reg_123_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => axiStreamGate_AXILiteS_s_axi_U_n_9,
      Q => \tmp_reg_123_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    packetIn_TVALID : in STD_LOGIC;
    packetIn_TREADY : out STD_LOGIC;
    packetIn_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    packetIn_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    packetIn_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    packetOut_TVALID : out STD_LOGIC;
    packetOut_TREADY : in STD_LOGIC;
    packetOut_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    packetOut_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    packetOut_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_axiStreamGate_0_0,axiStreamGate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axiStreamGate,Vivado 2016.4";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S_AXI_AXILITES_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_AXILITES_DATA_WIDTH : integer;
  attribute C_S_AXI_AXILITES_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "5'b00001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "5'b00010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "5'b00100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "5'b01000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "5'b10000";
  attribute ap_const_int64_8 : integer;
  attribute ap_const_int64_8 of inst : label is 8;
  attribute ap_const_lv2_0 : string;
  attribute ap_const_lv2_0 of inst : label is "2'b00";
  attribute ap_const_lv2_1 : string;
  attribute ap_const_lv2_1 of inst : label is "2'b01";
  attribute ap_const_lv2_2 : string;
  attribute ap_const_lv2_2 of inst : label is "2'b10";
  attribute ap_const_lv2_3 : string;
  attribute ap_const_lv2_3 of inst : label is "2'b11";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of inst : label is 0;
  attribute ap_const_lv32_1 : integer;
  attribute ap_const_lv32_1 of inst : label is 1;
  attribute ap_const_lv32_2 : integer;
  attribute ap_const_lv32_2 of inst : label is 2;
  attribute ap_const_lv32_3 : integer;
  attribute ap_const_lv32_3 of inst : label is 3;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axiStreamGate
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      packetIn_TDATA(63 downto 0) => packetIn_TDATA(63 downto 0),
      packetIn_TKEEP(7 downto 0) => packetIn_TKEEP(7 downto 0),
      packetIn_TLAST(0) => packetIn_TLAST(0),
      packetIn_TREADY => packetIn_TREADY,
      packetIn_TVALID => packetIn_TVALID,
      packetOut_TDATA(63 downto 0) => packetOut_TDATA(63 downto 0),
      packetOut_TKEEP(7 downto 0) => packetOut_TKEEP(7 downto 0),
      packetOut_TLAST(0) => packetOut_TLAST(0),
      packetOut_TREADY => packetOut_TREADY,
      packetOut_TVALID => packetOut_TVALID,
      s_axi_AXILiteS_ARADDR(4 downto 0) => s_axi_AXILiteS_ARADDR(4 downto 0),
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_AWADDR(4 downto 0) => s_axi_AXILiteS_AWADDR(4 downto 0),
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => s_axi_AXILiteS_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => s_axi_AXILiteS_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => s_axi_AXILiteS_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => s_axi_AXILiteS_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => s_axi_AXILiteS_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID
    );
end STRUCTURE;
