-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Apr  6 19:59:38 2026
-- Host        : aetherion running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vit_top_0_0_sim_netlist.vhdl
-- Design      : design_1_vit_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0\ is
  port (
    inference_done : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0\ : entity is "systolic_gemm";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0\ is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal done_i_10_n_0 : STD_LOGIC;
  signal done_i_11_n_0 : STD_LOGIC;
  signal done_i_12_n_0 : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal done_i_5_n_0 : STD_LOGIC;
  signal done_i_6_n_0 : STD_LOGIC;
  signal done_i_7_n_0 : STD_LOGIC;
  signal done_i_8_n_0 : STD_LOGIC;
  signal done_i_9_n_0 : STD_LOGIC;
  signal i : STD_LOGIC;
  signal \i0_carry__0_n_0\ : STD_LOGIC;
  signal \i0_carry__0_n_1\ : STD_LOGIC;
  signal \i0_carry__0_n_2\ : STD_LOGIC;
  signal \i0_carry__0_n_3\ : STD_LOGIC;
  signal \i0_carry__0_n_4\ : STD_LOGIC;
  signal \i0_carry__0_n_5\ : STD_LOGIC;
  signal \i0_carry__0_n_6\ : STD_LOGIC;
  signal \i0_carry__0_n_7\ : STD_LOGIC;
  signal \i0_carry__1_n_0\ : STD_LOGIC;
  signal \i0_carry__1_n_1\ : STD_LOGIC;
  signal \i0_carry__1_n_2\ : STD_LOGIC;
  signal \i0_carry__1_n_3\ : STD_LOGIC;
  signal \i0_carry__1_n_4\ : STD_LOGIC;
  signal \i0_carry__1_n_5\ : STD_LOGIC;
  signal \i0_carry__1_n_6\ : STD_LOGIC;
  signal \i0_carry__1_n_7\ : STD_LOGIC;
  signal \i0_carry__2_n_2\ : STD_LOGIC;
  signal \i0_carry__2_n_3\ : STD_LOGIC;
  signal \i0_carry__2_n_5\ : STD_LOGIC;
  signal \i0_carry__2_n_6\ : STD_LOGIC;
  signal \i0_carry__2_n_7\ : STD_LOGIC;
  signal i0_carry_n_0 : STD_LOGIC;
  signal i0_carry_n_1 : STD_LOGIC;
  signal i0_carry_n_2 : STD_LOGIC;
  signal i0_carry_n_3 : STD_LOGIC;
  signal i0_carry_n_4 : STD_LOGIC;
  signal i0_carry_n_5 : STD_LOGIC;
  signal i0_carry_n_6 : STD_LOGIC;
  signal i0_carry_n_7 : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[10]_i_1_n_0\ : STD_LOGIC;
  signal \i[11]_i_1_n_0\ : STD_LOGIC;
  signal \i[12]_i_1_n_0\ : STD_LOGIC;
  signal \i[13]_i_1_n_0\ : STD_LOGIC;
  signal \i[14]_i_1_n_0\ : STD_LOGIC;
  signal \i[15]_i_2_n_0\ : STD_LOGIC;
  signal \i[1]_i_1_n_0\ : STD_LOGIC;
  signal \i[2]_i_1_n_0\ : STD_LOGIC;
  signal \i[3]_i_1_n_0\ : STD_LOGIC;
  signal \i[4]_i_1_n_0\ : STD_LOGIC;
  signal \i[5]_i_1_n_0\ : STD_LOGIC;
  signal \i[6]_i_1_n_0\ : STD_LOGIC;
  signal \i[7]_i_1_n_0\ : STD_LOGIC;
  signal \i[8]_i_1_n_0\ : STD_LOGIC;
  signal \i[9]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_reg_n_0_[11]\ : STD_LOGIC;
  signal \i_reg_n_0_[12]\ : STD_LOGIC;
  signal \i_reg_n_0_[13]\ : STD_LOGIC;
  signal \i_reg_n_0_[14]\ : STD_LOGIC;
  signal \i_reg_n_0_[15]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_reg_n_0_[9]\ : STD_LOGIC;
  signal \^inference_done\ : STD_LOGIC;
  signal \j[0]_i_1_n_0\ : STD_LOGIC;
  signal \j[10]_i_1_n_0\ : STD_LOGIC;
  signal \j[11]_i_1_n_0\ : STD_LOGIC;
  signal \j[12]_i_1_n_0\ : STD_LOGIC;
  signal \j[13]_i_1_n_0\ : STD_LOGIC;
  signal \j[14]_i_1_n_0\ : STD_LOGIC;
  signal \j[15]_i_1_n_0\ : STD_LOGIC;
  signal \j[1]_i_1_n_0\ : STD_LOGIC;
  signal \j[2]_i_1_n_0\ : STD_LOGIC;
  signal \j[3]_i_1_n_0\ : STD_LOGIC;
  signal \j[4]_i_1_n_0\ : STD_LOGIC;
  signal \j[5]_i_1_n_0\ : STD_LOGIC;
  signal \j[6]_i_1_n_0\ : STD_LOGIC;
  signal \j[7]_i_1_n_0\ : STD_LOGIC;
  signal \j[8]_i_1_n_0\ : STD_LOGIC;
  signal \j[9]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \j_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \j_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \j_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \j_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \j_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \j_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \j_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \j_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \j_reg_n_0_[0]\ : STD_LOGIC;
  signal \j_reg_n_0_[10]\ : STD_LOGIC;
  signal \j_reg_n_0_[11]\ : STD_LOGIC;
  signal \j_reg_n_0_[12]\ : STD_LOGIC;
  signal \j_reg_n_0_[13]\ : STD_LOGIC;
  signal \j_reg_n_0_[14]\ : STD_LOGIC;
  signal \j_reg_n_0_[15]\ : STD_LOGIC;
  signal \j_reg_n_0_[1]\ : STD_LOGIC;
  signal \j_reg_n_0_[2]\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal \j_reg_n_0_[5]\ : STD_LOGIC;
  signal \j_reg_n_0_[6]\ : STD_LOGIC;
  signal \j_reg_n_0_[7]\ : STD_LOGIC;
  signal \j_reg_n_0_[8]\ : STD_LOGIC;
  signal \j_reg_n_0_[9]\ : STD_LOGIC;
  signal k : STD_LOGIC;
  signal \k0_carry__0_n_0\ : STD_LOGIC;
  signal \k0_carry__0_n_1\ : STD_LOGIC;
  signal \k0_carry__0_n_2\ : STD_LOGIC;
  signal \k0_carry__0_n_3\ : STD_LOGIC;
  signal \k0_carry__0_n_4\ : STD_LOGIC;
  signal \k0_carry__0_n_5\ : STD_LOGIC;
  signal \k0_carry__0_n_6\ : STD_LOGIC;
  signal \k0_carry__0_n_7\ : STD_LOGIC;
  signal \k0_carry__1_n_0\ : STD_LOGIC;
  signal \k0_carry__1_n_1\ : STD_LOGIC;
  signal \k0_carry__1_n_2\ : STD_LOGIC;
  signal \k0_carry__1_n_3\ : STD_LOGIC;
  signal \k0_carry__1_n_4\ : STD_LOGIC;
  signal \k0_carry__1_n_5\ : STD_LOGIC;
  signal \k0_carry__1_n_6\ : STD_LOGIC;
  signal \k0_carry__1_n_7\ : STD_LOGIC;
  signal \k0_carry__2_n_2\ : STD_LOGIC;
  signal \k0_carry__2_n_3\ : STD_LOGIC;
  signal \k0_carry__2_n_5\ : STD_LOGIC;
  signal \k0_carry__2_n_6\ : STD_LOGIC;
  signal \k0_carry__2_n_7\ : STD_LOGIC;
  signal k0_carry_n_0 : STD_LOGIC;
  signal k0_carry_n_1 : STD_LOGIC;
  signal k0_carry_n_2 : STD_LOGIC;
  signal k0_carry_n_3 : STD_LOGIC;
  signal k0_carry_n_4 : STD_LOGIC;
  signal k0_carry_n_5 : STD_LOGIC;
  signal k0_carry_n_6 : STD_LOGIC;
  signal k0_carry_n_7 : STD_LOGIC;
  signal \k[0]_i_1_n_0\ : STD_LOGIC;
  signal \k[10]_i_1_n_0\ : STD_LOGIC;
  signal \k[11]_i_1_n_0\ : STD_LOGIC;
  signal \k[12]_i_1_n_0\ : STD_LOGIC;
  signal \k[13]_i_1_n_0\ : STD_LOGIC;
  signal \k[14]_i_1_n_0\ : STD_LOGIC;
  signal \k[15]_i_2_n_0\ : STD_LOGIC;
  signal \k[1]_i_1_n_0\ : STD_LOGIC;
  signal \k[2]_i_1_n_0\ : STD_LOGIC;
  signal \k[3]_i_1_n_0\ : STD_LOGIC;
  signal \k[4]_i_1_n_0\ : STD_LOGIC;
  signal \k[5]_i_1_n_0\ : STD_LOGIC;
  signal \k[6]_i_1_n_0\ : STD_LOGIC;
  signal \k[7]_i_1_n_0\ : STD_LOGIC;
  signal \k[8]_i_1_n_0\ : STD_LOGIC;
  signal \k[9]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg_n_0_[0]\ : STD_LOGIC;
  signal \k_reg_n_0_[10]\ : STD_LOGIC;
  signal \k_reg_n_0_[11]\ : STD_LOGIC;
  signal \k_reg_n_0_[12]\ : STD_LOGIC;
  signal \k_reg_n_0_[13]\ : STD_LOGIC;
  signal \k_reg_n_0_[14]\ : STD_LOGIC;
  signal \k_reg_n_0_[15]\ : STD_LOGIC;
  signal \k_reg_n_0_[1]\ : STD_LOGIC;
  signal \k_reg_n_0_[2]\ : STD_LOGIC;
  signal \k_reg_n_0_[3]\ : STD_LOGIC;
  signal \k_reg_n_0_[4]\ : STD_LOGIC;
  signal \k_reg_n_0_[5]\ : STD_LOGIC;
  signal \k_reg_n_0_[6]\ : STD_LOGIC;
  signal \k_reg_n_0_[7]\ : STD_LOGIC;
  signal \k_reg_n_0_[8]\ : STD_LOGIC;
  signal \k_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_i0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_j_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_j_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_k0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_k0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "WRITE_Y:100,COMPUTE_K:010,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "WRITE_Y:100,COMPUTE_K:010,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "WRITE_Y:100,COMPUTE_K:010,IDLE:001";
  attribute SOFT_HLUTNM of done_i_12 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of done_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of done_i_5 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of i0_carry : label is 35;
  attribute ADDER_THRESHOLD of \i0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \i0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \i0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i[15]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \j[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \j[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \j[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \j[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \j[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \j[9]_i_1\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD of \j_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \j_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \j_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \j_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of k0_carry : label is 35;
  attribute ADDER_THRESHOLD of \k0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \k0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \k0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \k[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \k[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \k[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \k[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \k[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \k[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \k[15]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \k[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \k[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \k[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \k[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \k[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \k[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \k[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \k[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \k[9]_i_1\ : label is "soft_lutpair21";
begin
  inference_done <= \^inference_done\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => done_i_4_n_0,
      I1 => done_i_3_n_0,
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFFFF2FF0000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => done_i_4_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => done_i_5_n_0,
      I1 => done_i_6_n_0,
      I2 => done_i_7_n_0,
      I3 => done_i_8_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[2]_i_3_n_0\,
      I2 => \FSM_onehot_state[2]_i_4_n_0\,
      I3 => \FSM_onehot_state[2]_i_5_n_0\,
      I4 => \FSM_onehot_state[2]_i_6_n_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \k_reg_n_0_[1]\,
      I1 => \k_reg_n_0_[15]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \k_reg_n_0_[13]\,
      I1 => \k_reg_n_0_[10]\,
      I2 => \k_reg_n_0_[7]\,
      I3 => \k_reg_n_0_[3]\,
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \k_reg_n_0_[4]\,
      I1 => \k_reg_n_0_[8]\,
      I2 => \k_reg_n_0_[2]\,
      I3 => \k_reg_n_0_[6]\,
      O => \FSM_onehot_state[2]_i_5_n_0\
    );
\FSM_onehot_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \k_reg_n_0_[14]\,
      I1 => \k_reg_n_0_[5]\,
      I2 => \k_reg_n_0_[11]\,
      I3 => \k_reg_n_0_[12]\,
      I4 => \k_reg_n_0_[9]\,
      I5 => \k_reg_n_0_[0]\,
      O => \FSM_onehot_state[2]_i_6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => done_i_2_n_0,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => done_i_3_n_0,
      I3 => done_i_4_n_0,
      I4 => \^inference_done\,
      O => done_i_1_n_0
    );
done_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \i_reg_n_0_[9]\,
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[6]\,
      I3 => \i_reg_n_0_[2]\,
      O => done_i_10_n_0
    );
done_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \i_reg_n_0_[8]\,
      I1 => \i_reg_n_0_[5]\,
      I2 => \i_reg_n_0_[7]\,
      I3 => \i_reg_n_0_[15]\,
      O => done_i_11_n_0
    );
done_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[11]\,
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[13]\,
      I3 => \i_reg_n_0_[3]\,
      O => done_i_12_n_0
    );
done_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => done_i_5_n_0,
      I2 => done_i_6_n_0,
      I3 => done_i_7_n_0,
      I4 => done_i_8_n_0,
      O => done_i_3_n_0
    );
done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => done_i_9_n_0,
      I1 => done_i_10_n_0,
      I2 => done_i_11_n_0,
      I3 => done_i_12_n_0,
      O => done_i_4_n_0
    );
done_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \j_reg_n_0_[0]\,
      I1 => \j_reg_n_0_[2]\,
      I2 => \j_reg_n_0_[1]\,
      I3 => \j_reg_n_0_[13]\,
      O => done_i_5_n_0
    );
done_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \j_reg_n_0_[10]\,
      I1 => \j_reg_n_0_[9]\,
      I2 => \j_reg_n_0_[5]\,
      I3 => \j_reg_n_0_[4]\,
      O => done_i_6_n_0
    );
done_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \j_reg_n_0_[15]\,
      I1 => \j_reg_n_0_[14]\,
      I2 => \j_reg_n_0_[12]\,
      I3 => \j_reg_n_0_[3]\,
      O => done_i_7_n_0
    );
done_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \j_reg_n_0_[11]\,
      I1 => \j_reg_n_0_[7]\,
      I2 => \j_reg_n_0_[8]\,
      I3 => \j_reg_n_0_[6]\,
      O => done_i_8_n_0
    );
done_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_reg_n_0_[10]\,
      I1 => \i_reg_n_0_[4]\,
      I2 => \i_reg_n_0_[14]\,
      I3 => \i_reg_n_0_[12]\,
      O => done_i_9_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => done_i_1_n_0,
      Q => \^inference_done\
    );
i0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => i0_carry_n_0,
      CO(2) => i0_carry_n_1,
      CO(1) => i0_carry_n_2,
      CO(0) => i0_carry_n_3,
      CYINIT => \i_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => i0_carry_n_4,
      O(2) => i0_carry_n_5,
      O(1) => i0_carry_n_6,
      O(0) => i0_carry_n_7,
      S(3) => \i_reg_n_0_[4]\,
      S(2) => \i_reg_n_0_[3]\,
      S(1) => \i_reg_n_0_[2]\,
      S(0) => \i_reg_n_0_[1]\
    );
\i0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => i0_carry_n_0,
      CO(3) => \i0_carry__0_n_0\,
      CO(2) => \i0_carry__0_n_1\,
      CO(1) => \i0_carry__0_n_2\,
      CO(0) => \i0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i0_carry__0_n_4\,
      O(2) => \i0_carry__0_n_5\,
      O(1) => \i0_carry__0_n_6\,
      O(0) => \i0_carry__0_n_7\,
      S(3) => \i_reg_n_0_[8]\,
      S(2) => \i_reg_n_0_[7]\,
      S(1) => \i_reg_n_0_[6]\,
      S(0) => \i_reg_n_0_[5]\
    );
\i0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_carry__0_n_0\,
      CO(3) => \i0_carry__1_n_0\,
      CO(2) => \i0_carry__1_n_1\,
      CO(1) => \i0_carry__1_n_2\,
      CO(0) => \i0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i0_carry__1_n_4\,
      O(2) => \i0_carry__1_n_5\,
      O(1) => \i0_carry__1_n_6\,
      O(0) => \i0_carry__1_n_7\,
      S(3) => \i_reg_n_0_[12]\,
      S(2) => \i_reg_n_0_[11]\,
      S(1) => \i_reg_n_0_[10]\,
      S(0) => \i_reg_n_0_[9]\
    );
\i0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_i0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i0_carry__2_n_2\,
      CO(0) => \i0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i0_carry__2_O_UNCONNECTED\(3),
      O(2) => \i0_carry__2_n_5\,
      O(1) => \i0_carry__2_n_6\,
      O(0) => \i0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \i_reg_n_0_[15]\,
      S(1) => \i_reg_n_0_[14]\,
      S(0) => \i_reg_n_0_[13]\
    );
\i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i_reg_n_0_[0]\,
      O => \i[0]_i_1_n_0\
    );
\i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__1_n_6\,
      O => \i[10]_i_1_n_0\
    );
\i[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__1_n_5\,
      O => \i[11]_i_1_n_0\
    );
\i[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__1_n_4\,
      O => \i[12]_i_1_n_0\
    );
\i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__2_n_7\,
      O => \i[13]_i_1_n_0\
    );
\i[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__2_n_6\,
      O => \i[14]_i_1_n_0\
    );
\i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => done_i_4_n_0,
      I1 => done_i_3_n_0,
      O => i
    );
\i[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__2_n_5\,
      O => \i[15]_i_2_n_0\
    );
\i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => i0_carry_n_7,
      O => \i[1]_i_1_n_0\
    );
\i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => i0_carry_n_6,
      O => \i[2]_i_1_n_0\
    );
\i[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => i0_carry_n_5,
      O => \i[3]_i_1_n_0\
    );
\i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => i0_carry_n_4,
      O => \i[4]_i_1_n_0\
    );
\i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__0_n_7\,
      O => \i[5]_i_1_n_0\
    );
\i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__0_n_6\,
      O => \i[6]_i_1_n_0\
    );
\i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__0_n_5\,
      O => \i[7]_i_1_n_0\
    );
\i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__0_n_4\,
      O => \i[8]_i_1_n_0\
    );
\i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \i0_carry__1_n_7\,
      O => \i[9]_i_1_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[0]_i_1_n_0\,
      Q => \i_reg_n_0_[0]\
    );
\i_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[10]_i_1_n_0\,
      Q => \i_reg_n_0_[10]\
    );
\i_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[11]_i_1_n_0\,
      Q => \i_reg_n_0_[11]\
    );
\i_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[12]_i_1_n_0\,
      Q => \i_reg_n_0_[12]\
    );
\i_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[13]_i_1_n_0\,
      Q => \i_reg_n_0_[13]\
    );
\i_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[14]_i_1_n_0\,
      Q => \i_reg_n_0_[14]\
    );
\i_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[15]_i_2_n_0\,
      Q => \i_reg_n_0_[15]\
    );
\i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[1]_i_1_n_0\,
      Q => \i_reg_n_0_[1]\
    );
\i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[2]_i_1_n_0\,
      Q => \i_reg_n_0_[2]\
    );
\i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[3]_i_1_n_0\,
      Q => \i_reg_n_0_[3]\
    );
\i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[4]_i_1_n_0\,
      Q => \i_reg_n_0_[4]\
    );
\i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[5]_i_1_n_0\,
      Q => \i_reg_n_0_[5]\
    );
\i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[6]_i_1_n_0\,
      Q => \i_reg_n_0_[6]\
    );
\i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[7]_i_1_n_0\,
      Q => \i_reg_n_0_[7]\
    );
\i_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[8]_i_1_n_0\,
      Q => \i_reg_n_0_[8]\
    );
\i_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i,
      CLR => done_i_2_n_0,
      D => \i[9]_i_1_n_0\,
      Q => \i_reg_n_0_[9]\
    );
\j[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[0]\,
      O => \j[0]_i_1_n_0\
    );
\j[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[12]_i_2_n_6\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[10]_i_1_n_0\
    );
\j[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[12]_i_2_n_5\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[11]_i_1_n_0\
    );
\j[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[12]_i_2_n_4\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[12]_i_1_n_0\
    );
\j[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[15]_i_2_n_7\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[13]_i_1_n_0\
    );
\j[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[15]_i_2_n_6\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[14]_i_1_n_0\
    );
\j[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[15]_i_2_n_5\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[15]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[4]_i_2_n_7\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[1]_i_1_n_0\
    );
\j[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[4]_i_2_n_6\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[2]_i_1_n_0\
    );
\j[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[4]_i_2_n_5\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[3]_i_1_n_0\
    );
\j[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[4]_i_2_n_4\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[4]_i_1_n_0\
    );
\j[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[8]_i_2_n_7\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[5]_i_1_n_0\
    );
\j[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[8]_i_2_n_6\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[6]_i_1_n_0\
    );
\j[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[8]_i_2_n_5\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[7]_i_1_n_0\
    );
\j[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[8]_i_2_n_4\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[8]_i_1_n_0\
    );
\j[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \j_reg[12]_i_2_n_7\,
      I1 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \j[9]_i_1_n_0\
    );
\j_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[0]_i_1_n_0\,
      Q => \j_reg_n_0_[0]\
    );
\j_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[10]_i_1_n_0\,
      Q => \j_reg_n_0_[10]\
    );
\j_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[11]_i_1_n_0\,
      Q => \j_reg_n_0_[11]\
    );
\j_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[12]_i_1_n_0\,
      Q => \j_reg_n_0_[12]\
    );
\j_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \j_reg[8]_i_2_n_0\,
      CO(3) => \j_reg[12]_i_2_n_0\,
      CO(2) => \j_reg[12]_i_2_n_1\,
      CO(1) => \j_reg[12]_i_2_n_2\,
      CO(0) => \j_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \j_reg[12]_i_2_n_4\,
      O(2) => \j_reg[12]_i_2_n_5\,
      O(1) => \j_reg[12]_i_2_n_6\,
      O(0) => \j_reg[12]_i_2_n_7\,
      S(3) => \j_reg_n_0_[12]\,
      S(2) => \j_reg_n_0_[11]\,
      S(1) => \j_reg_n_0_[10]\,
      S(0) => \j_reg_n_0_[9]\
    );
\j_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[13]_i_1_n_0\,
      Q => \j_reg_n_0_[13]\
    );
\j_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[14]_i_1_n_0\,
      Q => \j_reg_n_0_[14]\
    );
\j_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[15]_i_1_n_0\,
      Q => \j_reg_n_0_[15]\
    );
\j_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \j_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_j_reg[15]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \j_reg[15]_i_2_n_2\,
      CO(0) => \j_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_j_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2) => \j_reg[15]_i_2_n_5\,
      O(1) => \j_reg[15]_i_2_n_6\,
      O(0) => \j_reg[15]_i_2_n_7\,
      S(3) => '0',
      S(2) => \j_reg_n_0_[15]\,
      S(1) => \j_reg_n_0_[14]\,
      S(0) => \j_reg_n_0_[13]\
    );
\j_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[1]_i_1_n_0\,
      Q => \j_reg_n_0_[1]\
    );
\j_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[2]_i_1_n_0\,
      Q => \j_reg_n_0_[2]\
    );
\j_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[3]_i_1_n_0\,
      Q => \j_reg_n_0_[3]\
    );
\j_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[4]_i_1_n_0\,
      Q => \j_reg_n_0_[4]\
    );
\j_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \j_reg[4]_i_2_n_0\,
      CO(2) => \j_reg[4]_i_2_n_1\,
      CO(1) => \j_reg[4]_i_2_n_2\,
      CO(0) => \j_reg[4]_i_2_n_3\,
      CYINIT => \j_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \j_reg[4]_i_2_n_4\,
      O(2) => \j_reg[4]_i_2_n_5\,
      O(1) => \j_reg[4]_i_2_n_6\,
      O(0) => \j_reg[4]_i_2_n_7\,
      S(3) => \j_reg_n_0_[4]\,
      S(2) => \j_reg_n_0_[3]\,
      S(1) => \j_reg_n_0_[2]\,
      S(0) => \j_reg_n_0_[1]\
    );
\j_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[5]_i_1_n_0\,
      Q => \j_reg_n_0_[5]\
    );
\j_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[6]_i_1_n_0\,
      Q => \j_reg_n_0_[6]\
    );
\j_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[7]_i_1_n_0\,
      Q => \j_reg_n_0_[7]\
    );
\j_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[8]_i_1_n_0\,
      Q => \j_reg_n_0_[8]\
    );
\j_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \j_reg[4]_i_2_n_0\,
      CO(3) => \j_reg[8]_i_2_n_0\,
      CO(2) => \j_reg[8]_i_2_n_1\,
      CO(1) => \j_reg[8]_i_2_n_2\,
      CO(0) => \j_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \j_reg[8]_i_2_n_4\,
      O(2) => \j_reg[8]_i_2_n_5\,
      O(1) => \j_reg[8]_i_2_n_6\,
      O(0) => \j_reg[8]_i_2_n_7\,
      S(3) => \j_reg_n_0_[8]\,
      S(2) => \j_reg_n_0_[7]\,
      S(1) => \j_reg_n_0_[6]\,
      S(0) => \j_reg_n_0_[5]\
    );
\j_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_onehot_state_reg_n_0_[2]\,
      CLR => done_i_2_n_0,
      D => \j[9]_i_1_n_0\,
      Q => \j_reg_n_0_[9]\
    );
k0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => k0_carry_n_0,
      CO(2) => k0_carry_n_1,
      CO(1) => k0_carry_n_2,
      CO(0) => k0_carry_n_3,
      CYINIT => \k_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => k0_carry_n_4,
      O(2) => k0_carry_n_5,
      O(1) => k0_carry_n_6,
      O(0) => k0_carry_n_7,
      S(3) => \k_reg_n_0_[4]\,
      S(2) => \k_reg_n_0_[3]\,
      S(1) => \k_reg_n_0_[2]\,
      S(0) => \k_reg_n_0_[1]\
    );
\k0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => k0_carry_n_0,
      CO(3) => \k0_carry__0_n_0\,
      CO(2) => \k0_carry__0_n_1\,
      CO(1) => \k0_carry__0_n_2\,
      CO(0) => \k0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \k0_carry__0_n_4\,
      O(2) => \k0_carry__0_n_5\,
      O(1) => \k0_carry__0_n_6\,
      O(0) => \k0_carry__0_n_7\,
      S(3) => \k_reg_n_0_[8]\,
      S(2) => \k_reg_n_0_[7]\,
      S(1) => \k_reg_n_0_[6]\,
      S(0) => \k_reg_n_0_[5]\
    );
\k0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \k0_carry__0_n_0\,
      CO(3) => \k0_carry__1_n_0\,
      CO(2) => \k0_carry__1_n_1\,
      CO(1) => \k0_carry__1_n_2\,
      CO(0) => \k0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \k0_carry__1_n_4\,
      O(2) => \k0_carry__1_n_5\,
      O(1) => \k0_carry__1_n_6\,
      O(0) => \k0_carry__1_n_7\,
      S(3) => \k_reg_n_0_[12]\,
      S(2) => \k_reg_n_0_[11]\,
      S(1) => \k_reg_n_0_[10]\,
      S(0) => \k_reg_n_0_[9]\
    );
\k0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \k0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_k0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \k0_carry__2_n_2\,
      CO(0) => \k0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_k0_carry__2_O_UNCONNECTED\(3),
      O(2) => \k0_carry__2_n_5\,
      O(1) => \k0_carry__2_n_6\,
      O(0) => \k0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \k_reg_n_0_[15]\,
      S(1) => \k_reg_n_0_[14]\,
      S(0) => \k_reg_n_0_[13]\
    );
\k[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k_reg_n_0_[0]\,
      O => \k[0]_i_1_n_0\
    );
\k[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__1_n_6\,
      O => \k[10]_i_1_n_0\
    );
\k[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__1_n_5\,
      O => \k[11]_i_1_n_0\
    );
\k[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__1_n_4\,
      O => \k[12]_i_1_n_0\
    );
\k[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__2_n_7\,
      O => \k[13]_i_1_n_0\
    );
\k[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__2_n_6\,
      O => \k[14]_i_1_n_0\
    );
\k[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => k
    );
\k[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__2_n_5\,
      O => \k[15]_i_2_n_0\
    );
\k[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => k0_carry_n_7,
      O => \k[1]_i_1_n_0\
    );
\k[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => k0_carry_n_6,
      O => \k[2]_i_1_n_0\
    );
\k[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => k0_carry_n_5,
      O => \k[3]_i_1_n_0\
    );
\k[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => k0_carry_n_4,
      O => \k[4]_i_1_n_0\
    );
\k[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__0_n_7\,
      O => \k[5]_i_1_n_0\
    );
\k[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__0_n_6\,
      O => \k[6]_i_1_n_0\
    );
\k[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__0_n_5\,
      O => \k[7]_i_1_n_0\
    );
\k[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__0_n_4\,
      O => \k[8]_i_1_n_0\
    );
\k[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \k0_carry__1_n_7\,
      O => \k[9]_i_1_n_0\
    );
\k_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[0]_i_1_n_0\,
      Q => \k_reg_n_0_[0]\
    );
\k_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[10]_i_1_n_0\,
      Q => \k_reg_n_0_[10]\
    );
\k_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[11]_i_1_n_0\,
      Q => \k_reg_n_0_[11]\
    );
\k_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[12]_i_1_n_0\,
      Q => \k_reg_n_0_[12]\
    );
\k_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[13]_i_1_n_0\,
      Q => \k_reg_n_0_[13]\
    );
\k_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[14]_i_1_n_0\,
      Q => \k_reg_n_0_[14]\
    );
\k_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[15]_i_2_n_0\,
      Q => \k_reg_n_0_[15]\
    );
\k_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[1]_i_1_n_0\,
      Q => \k_reg_n_0_[1]\
    );
\k_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[2]_i_1_n_0\,
      Q => \k_reg_n_0_[2]\
    );
\k_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[3]_i_1_n_0\,
      Q => \k_reg_n_0_[3]\
    );
\k_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[4]_i_1_n_0\,
      Q => \k_reg_n_0_[4]\
    );
\k_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[5]_i_1_n_0\,
      Q => \k_reg_n_0_[5]\
    );
\k_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[6]_i_1_n_0\,
      Q => \k_reg_n_0_[6]\
    );
\k_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[7]_i_1_n_0\,
      Q => \k_reg_n_0_[7]\
    );
\k_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[8]_i_1_n_0\,
      Q => \k_reg_n_0_[8]\
    );
\k_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => k,
      CLR => done_i_2_n_0,
      D => \k[9]_i_1_n_0\,
      Q => \k_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vit_top is
  port (
    inference_done : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vit_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vit_top is
begin
classification_head: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0\
     port map (
      clk => clk,
      inference_done => inference_done,
      rst_n => rst_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    start_inference : in STD_LOGIC;
    inference_done : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    logit_benign : out STD_LOGIC_VECTOR ( 15 downto 0 );
    logit_malware : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_vit_top_0_0,vit_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vit_top,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  logit_benign(15) <= \<const0>\;
  logit_benign(14) <= \<const0>\;
  logit_benign(13) <= \<const0>\;
  logit_benign(12) <= \<const0>\;
  logit_benign(11) <= \<const0>\;
  logit_benign(10) <= \<const0>\;
  logit_benign(9) <= \<const0>\;
  logit_benign(8) <= \<const0>\;
  logit_benign(7) <= \<const0>\;
  logit_benign(6) <= \<const0>\;
  logit_benign(5) <= \<const0>\;
  logit_benign(4) <= \<const0>\;
  logit_benign(3) <= \<const0>\;
  logit_benign(2) <= \<const0>\;
  logit_benign(1) <= \<const0>\;
  logit_benign(0) <= \<const0>\;
  logit_malware(15) <= \<const0>\;
  logit_malware(14) <= \<const0>\;
  logit_malware(13) <= \<const0>\;
  logit_malware(12) <= \<const0>\;
  logit_malware(11) <= \<const0>\;
  logit_malware(10) <= \<const0>\;
  logit_malware(9) <= \<const0>\;
  logit_malware(8) <= \<const0>\;
  logit_malware(7) <= \<const0>\;
  logit_malware(6) <= \<const0>\;
  logit_malware(5) <= \<const0>\;
  logit_malware(4) <= \<const0>\;
  logit_malware(3) <= \<const0>\;
  logit_malware(2) <= \<const0>\;
  logit_malware(1) <= \<const0>\;
  logit_malware(0) <= \<const0>\;
  s_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vit_top
     port map (
      clk => clk,
      inference_done => inference_done,
      rst_n => rst_n
    );
end STRUCTURE;
