// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Apr  6 19:59:38 2026
// Host        : aetherion running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vit_top_0_0_sim_netlist.v
// Design      : design_1_vit_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vit_top_0_0,vit_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "vit_top,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    start_inference,
    inference_done,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    logit_benign,
    logit_malware);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input start_inference;
  output inference_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  output [15:0]logit_benign;
  output [15:0]logit_malware;

  wire \<const0> ;
  wire clk;
  wire inference_done;
  wire rst_n;

  assign logit_benign[15] = \<const0> ;
  assign logit_benign[14] = \<const0> ;
  assign logit_benign[13] = \<const0> ;
  assign logit_benign[12] = \<const0> ;
  assign logit_benign[11] = \<const0> ;
  assign logit_benign[10] = \<const0> ;
  assign logit_benign[9] = \<const0> ;
  assign logit_benign[8] = \<const0> ;
  assign logit_benign[7] = \<const0> ;
  assign logit_benign[6] = \<const0> ;
  assign logit_benign[5] = \<const0> ;
  assign logit_benign[4] = \<const0> ;
  assign logit_benign[3] = \<const0> ;
  assign logit_benign[2] = \<const0> ;
  assign logit_benign[1] = \<const0> ;
  assign logit_benign[0] = \<const0> ;
  assign logit_malware[15] = \<const0> ;
  assign logit_malware[14] = \<const0> ;
  assign logit_malware[13] = \<const0> ;
  assign logit_malware[12] = \<const0> ;
  assign logit_malware[11] = \<const0> ;
  assign logit_malware[10] = \<const0> ;
  assign logit_malware[9] = \<const0> ;
  assign logit_malware[8] = \<const0> ;
  assign logit_malware[7] = \<const0> ;
  assign logit_malware[6] = \<const0> ;
  assign logit_malware[5] = \<const0> ;
  assign logit_malware[4] = \<const0> ;
  assign logit_malware[3] = \<const0> ;
  assign logit_malware[2] = \<const0> ;
  assign logit_malware[1] = \<const0> ;
  assign logit_malware[0] = \<const0> ;
  assign s_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vit_top inst
       (.clk(clk),
        .inference_done(inference_done),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "systolic_gemm" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0
   (inference_done,
    clk,
    rst_n);
  output inference_done;
  input clk;
  input rst_n;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_6_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire clk;
  wire done_i_10_n_0;
  wire done_i_11_n_0;
  wire done_i_12_n_0;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire done_i_5_n_0;
  wire done_i_6_n_0;
  wire done_i_7_n_0;
  wire done_i_8_n_0;
  wire done_i_9_n_0;
  wire i;
  wire i0_carry__0_n_0;
  wire i0_carry__0_n_1;
  wire i0_carry__0_n_2;
  wire i0_carry__0_n_3;
  wire i0_carry__0_n_4;
  wire i0_carry__0_n_5;
  wire i0_carry__0_n_6;
  wire i0_carry__0_n_7;
  wire i0_carry__1_n_0;
  wire i0_carry__1_n_1;
  wire i0_carry__1_n_2;
  wire i0_carry__1_n_3;
  wire i0_carry__1_n_4;
  wire i0_carry__1_n_5;
  wire i0_carry__1_n_6;
  wire i0_carry__1_n_7;
  wire i0_carry__2_n_2;
  wire i0_carry__2_n_3;
  wire i0_carry__2_n_5;
  wire i0_carry__2_n_6;
  wire i0_carry__2_n_7;
  wire i0_carry_n_0;
  wire i0_carry_n_1;
  wire i0_carry_n_2;
  wire i0_carry_n_3;
  wire i0_carry_n_4;
  wire i0_carry_n_5;
  wire i0_carry_n_6;
  wire i0_carry_n_7;
  wire \i[0]_i_1_n_0 ;
  wire \i[10]_i_1_n_0 ;
  wire \i[11]_i_1_n_0 ;
  wire \i[12]_i_1_n_0 ;
  wire \i[13]_i_1_n_0 ;
  wire \i[14]_i_1_n_0 ;
  wire \i[15]_i_2_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[10] ;
  wire \i_reg_n_0_[11] ;
  wire \i_reg_n_0_[12] ;
  wire \i_reg_n_0_[13] ;
  wire \i_reg_n_0_[14] ;
  wire \i_reg_n_0_[15] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire \i_reg_n_0_[8] ;
  wire \i_reg_n_0_[9] ;
  wire inference_done;
  wire \j[0]_i_1_n_0 ;
  wire \j[10]_i_1_n_0 ;
  wire \j[11]_i_1_n_0 ;
  wire \j[12]_i_1_n_0 ;
  wire \j[13]_i_1_n_0 ;
  wire \j[14]_i_1_n_0 ;
  wire \j[15]_i_1_n_0 ;
  wire \j[1]_i_1_n_0 ;
  wire \j[2]_i_1_n_0 ;
  wire \j[3]_i_1_n_0 ;
  wire \j[4]_i_1_n_0 ;
  wire \j[5]_i_1_n_0 ;
  wire \j[6]_i_1_n_0 ;
  wire \j[7]_i_1_n_0 ;
  wire \j[8]_i_1_n_0 ;
  wire \j[9]_i_1_n_0 ;
  wire \j_reg[12]_i_2_n_0 ;
  wire \j_reg[12]_i_2_n_1 ;
  wire \j_reg[12]_i_2_n_2 ;
  wire \j_reg[12]_i_2_n_3 ;
  wire \j_reg[12]_i_2_n_4 ;
  wire \j_reg[12]_i_2_n_5 ;
  wire \j_reg[12]_i_2_n_6 ;
  wire \j_reg[12]_i_2_n_7 ;
  wire \j_reg[15]_i_2_n_2 ;
  wire \j_reg[15]_i_2_n_3 ;
  wire \j_reg[15]_i_2_n_5 ;
  wire \j_reg[15]_i_2_n_6 ;
  wire \j_reg[15]_i_2_n_7 ;
  wire \j_reg[4]_i_2_n_0 ;
  wire \j_reg[4]_i_2_n_1 ;
  wire \j_reg[4]_i_2_n_2 ;
  wire \j_reg[4]_i_2_n_3 ;
  wire \j_reg[4]_i_2_n_4 ;
  wire \j_reg[4]_i_2_n_5 ;
  wire \j_reg[4]_i_2_n_6 ;
  wire \j_reg[4]_i_2_n_7 ;
  wire \j_reg[8]_i_2_n_0 ;
  wire \j_reg[8]_i_2_n_1 ;
  wire \j_reg[8]_i_2_n_2 ;
  wire \j_reg[8]_i_2_n_3 ;
  wire \j_reg[8]_i_2_n_4 ;
  wire \j_reg[8]_i_2_n_5 ;
  wire \j_reg[8]_i_2_n_6 ;
  wire \j_reg[8]_i_2_n_7 ;
  wire \j_reg_n_0_[0] ;
  wire \j_reg_n_0_[10] ;
  wire \j_reg_n_0_[11] ;
  wire \j_reg_n_0_[12] ;
  wire \j_reg_n_0_[13] ;
  wire \j_reg_n_0_[14] ;
  wire \j_reg_n_0_[15] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire \j_reg_n_0_[5] ;
  wire \j_reg_n_0_[6] ;
  wire \j_reg_n_0_[7] ;
  wire \j_reg_n_0_[8] ;
  wire \j_reg_n_0_[9] ;
  wire k;
  wire k0_carry__0_n_0;
  wire k0_carry__0_n_1;
  wire k0_carry__0_n_2;
  wire k0_carry__0_n_3;
  wire k0_carry__0_n_4;
  wire k0_carry__0_n_5;
  wire k0_carry__0_n_6;
  wire k0_carry__0_n_7;
  wire k0_carry__1_n_0;
  wire k0_carry__1_n_1;
  wire k0_carry__1_n_2;
  wire k0_carry__1_n_3;
  wire k0_carry__1_n_4;
  wire k0_carry__1_n_5;
  wire k0_carry__1_n_6;
  wire k0_carry__1_n_7;
  wire k0_carry__2_n_2;
  wire k0_carry__2_n_3;
  wire k0_carry__2_n_5;
  wire k0_carry__2_n_6;
  wire k0_carry__2_n_7;
  wire k0_carry_n_0;
  wire k0_carry_n_1;
  wire k0_carry_n_2;
  wire k0_carry_n_3;
  wire k0_carry_n_4;
  wire k0_carry_n_5;
  wire k0_carry_n_6;
  wire k0_carry_n_7;
  wire \k[0]_i_1_n_0 ;
  wire \k[10]_i_1_n_0 ;
  wire \k[11]_i_1_n_0 ;
  wire \k[12]_i_1_n_0 ;
  wire \k[13]_i_1_n_0 ;
  wire \k[14]_i_1_n_0 ;
  wire \k[15]_i_2_n_0 ;
  wire \k[1]_i_1_n_0 ;
  wire \k[2]_i_1_n_0 ;
  wire \k[3]_i_1_n_0 ;
  wire \k[4]_i_1_n_0 ;
  wire \k[5]_i_1_n_0 ;
  wire \k[6]_i_1_n_0 ;
  wire \k[7]_i_1_n_0 ;
  wire \k[8]_i_1_n_0 ;
  wire \k[9]_i_1_n_0 ;
  wire \k_reg_n_0_[0] ;
  wire \k_reg_n_0_[10] ;
  wire \k_reg_n_0_[11] ;
  wire \k_reg_n_0_[12] ;
  wire \k_reg_n_0_[13] ;
  wire \k_reg_n_0_[14] ;
  wire \k_reg_n_0_[15] ;
  wire \k_reg_n_0_[1] ;
  wire \k_reg_n_0_[2] ;
  wire \k_reg_n_0_[3] ;
  wire \k_reg_n_0_[4] ;
  wire \k_reg_n_0_[5] ;
  wire \k_reg_n_0_[6] ;
  wire \k_reg_n_0_[7] ;
  wire \k_reg_n_0_[8] ;
  wire \k_reg_n_0_[9] ;
  wire rst_n;
  wire [3:2]NLW_i0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_i0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_j_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_j_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_k0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_k0_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h2F20)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(done_i_4_n_0),
        .I1(done_i_3_n_0),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFFFFFF2FF0000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(done_i_4_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(done_i_5_n_0),
        .I1(done_i_6_n_0),
        .I2(done_i_7_n_0),
        .I3(done_i_8_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state[2]_i_4_n_0 ),
        .I3(\FSM_onehot_state[2]_i_5_n_0 ),
        .I4(\FSM_onehot_state[2]_i_6_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\k_reg_n_0_[1] ),
        .I1(\k_reg_n_0_[15] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(\k_reg_n_0_[13] ),
        .I1(\k_reg_n_0_[10] ),
        .I2(\k_reg_n_0_[7] ),
        .I3(\k_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(\k_reg_n_0_[4] ),
        .I1(\k_reg_n_0_[8] ),
        .I2(\k_reg_n_0_[2] ),
        .I3(\k_reg_n_0_[6] ),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \FSM_onehot_state[2]_i_6 
       (.I0(\k_reg_n_0_[14] ),
        .I1(\k_reg_n_0_[5] ),
        .I2(\k_reg_n_0_[11] ),
        .I3(\k_reg_n_0_[12] ),
        .I4(\k_reg_n_0_[9] ),
        .I5(\k_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_Y:100,COMPUTE_K:010,IDLE:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(done_i_2_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "WRITE_Y:100,COMPUTE_K:010,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "WRITE_Y:100,COMPUTE_K:010,IDLE:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    done_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(done_i_3_n_0),
        .I3(done_i_4_n_0),
        .I4(inference_done),
        .O(done_i_1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    done_i_10
       (.I0(\i_reg_n_0_[9] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(\i_reg_n_0_[6] ),
        .I3(\i_reg_n_0_[2] ),
        .O(done_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    done_i_11
       (.I0(\i_reg_n_0_[8] ),
        .I1(\i_reg_n_0_[5] ),
        .I2(\i_reg_n_0_[7] ),
        .I3(\i_reg_n_0_[15] ),
        .O(done_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_12
       (.I0(\i_reg_n_0_[11] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[13] ),
        .I3(\i_reg_n_0_[3] ),
        .O(done_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    done_i_2
       (.I0(rst_n),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    done_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(done_i_5_n_0),
        .I2(done_i_6_n_0),
        .I3(done_i_7_n_0),
        .I4(done_i_8_n_0),
        .O(done_i_3_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    done_i_4
       (.I0(done_i_9_n_0),
        .I1(done_i_10_n_0),
        .I2(done_i_11_n_0),
        .I3(done_i_12_n_0),
        .O(done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    done_i_5
       (.I0(\j_reg_n_0_[0] ),
        .I1(\j_reg_n_0_[2] ),
        .I2(\j_reg_n_0_[1] ),
        .I3(\j_reg_n_0_[13] ),
        .O(done_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_6
       (.I0(\j_reg_n_0_[10] ),
        .I1(\j_reg_n_0_[9] ),
        .I2(\j_reg_n_0_[5] ),
        .I3(\j_reg_n_0_[4] ),
        .O(done_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    done_i_7
       (.I0(\j_reg_n_0_[15] ),
        .I1(\j_reg_n_0_[14] ),
        .I2(\j_reg_n_0_[12] ),
        .I3(\j_reg_n_0_[3] ),
        .O(done_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_8
       (.I0(\j_reg_n_0_[11] ),
        .I1(\j_reg_n_0_[7] ),
        .I2(\j_reg_n_0_[8] ),
        .I3(\j_reg_n_0_[6] ),
        .O(done_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    done_i_9
       (.I0(\i_reg_n_0_[10] ),
        .I1(\i_reg_n_0_[4] ),
        .I2(\i_reg_n_0_[14] ),
        .I3(\i_reg_n_0_[12] ),
        .O(done_i_9_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(done_i_1_n_0),
        .Q(inference_done));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry
       (.CI(1'b0),
        .CO({i0_carry_n_0,i0_carry_n_1,i0_carry_n_2,i0_carry_n_3}),
        .CYINIT(\i_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i0_carry_n_4,i0_carry_n_5,i0_carry_n_6,i0_carry_n_7}),
        .S({\i_reg_n_0_[4] ,\i_reg_n_0_[3] ,\i_reg_n_0_[2] ,\i_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i0_carry__0_n_4,i0_carry__0_n_5,i0_carry__0_n_6,i0_carry__0_n_7}),
        .S({\i_reg_n_0_[8] ,\i_reg_n_0_[7] ,\i_reg_n_0_[6] ,\i_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({i0_carry__1_n_4,i0_carry__1_n_5,i0_carry__1_n_6,i0_carry__1_n_7}),
        .S({\i_reg_n_0_[12] ,\i_reg_n_0_[11] ,\i_reg_n_0_[10] ,\i_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({NLW_i0_carry__2_CO_UNCONNECTED[3:2],i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i0_carry__2_O_UNCONNECTED[3],i0_carry__2_n_5,i0_carry__2_n_6,i0_carry__2_n_7}),
        .S({1'b0,\i_reg_n_0_[15] ,\i_reg_n_0_[14] ,\i_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__1_n_6),
        .O(\i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__1_n_5),
        .O(\i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__1_n_4),
        .O(\i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__2_n_7),
        .O(\i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__2_n_6),
        .O(\i[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[15]_i_1 
       (.I0(done_i_4_n_0),
        .I1(done_i_3_n_0),
        .O(i));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__2_n_5),
        .O(\i[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry_n_7),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry_n_6),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry_n_5),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry_n_4),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__0_n_7),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__0_n_6),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__0_n_5),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__0_n_4),
        .O(\i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i0_carry__1_n_7),
        .O(\i[9]_i_1_n_0 ));
  FDCE \i_reg[0] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ));
  FDCE \i_reg[10] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[10]_i_1_n_0 ),
        .Q(\i_reg_n_0_[10] ));
  FDCE \i_reg[11] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[11]_i_1_n_0 ),
        .Q(\i_reg_n_0_[11] ));
  FDCE \i_reg[12] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[12]_i_1_n_0 ),
        .Q(\i_reg_n_0_[12] ));
  FDCE \i_reg[13] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[13]_i_1_n_0 ),
        .Q(\i_reg_n_0_[13] ));
  FDCE \i_reg[14] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[14]_i_1_n_0 ),
        .Q(\i_reg_n_0_[14] ));
  FDCE \i_reg[15] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[15]_i_2_n_0 ),
        .Q(\i_reg_n_0_[15] ));
  FDCE \i_reg[1] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[1]_i_1_n_0 ),
        .Q(\i_reg_n_0_[1] ));
  FDCE \i_reg[2] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[2]_i_1_n_0 ),
        .Q(\i_reg_n_0_[2] ));
  FDCE \i_reg[3] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[3]_i_1_n_0 ),
        .Q(\i_reg_n_0_[3] ));
  FDCE \i_reg[4] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[4]_i_1_n_0 ),
        .Q(\i_reg_n_0_[4] ));
  FDCE \i_reg[5] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[5]_i_1_n_0 ),
        .Q(\i_reg_n_0_[5] ));
  FDCE \i_reg[6] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[6]_i_1_n_0 ),
        .Q(\i_reg_n_0_[6] ));
  FDCE \i_reg[7] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[7]_i_1_n_0 ),
        .Q(\i_reg_n_0_[7] ));
  FDCE \i_reg[8] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[8]_i_1_n_0 ),
        .Q(\i_reg_n_0_[8] ));
  FDCE \i_reg[9] 
       (.C(clk),
        .CE(i),
        .CLR(done_i_2_n_0),
        .D(\i[9]_i_1_n_0 ),
        .Q(\i_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j[0]_i_1 
       (.I0(\j_reg_n_0_[0] ),
        .O(\j[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[10]_i_1 
       (.I0(\j_reg[12]_i_2_n_6 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[11]_i_1 
       (.I0(\j_reg[12]_i_2_n_5 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[12]_i_1 
       (.I0(\j_reg[12]_i_2_n_4 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[13]_i_1 
       (.I0(\j_reg[15]_i_2_n_7 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[14]_i_1 
       (.I0(\j_reg[15]_i_2_n_6 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \j[15]_i_1 
       (.I0(\j_reg[15]_i_2_n_5 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[1]_i_1 
       (.I0(\j_reg[4]_i_2_n_7 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[2]_i_1 
       (.I0(\j_reg[4]_i_2_n_6 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[3]_i_1 
       (.I0(\j_reg[4]_i_2_n_5 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[4]_i_1 
       (.I0(\j_reg[4]_i_2_n_4 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[5]_i_1 
       (.I0(\j_reg[8]_i_2_n_7 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[6]_i_1 
       (.I0(\j_reg[8]_i_2_n_6 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[7]_i_1 
       (.I0(\j_reg[8]_i_2_n_5 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[8]_i_1 
       (.I0(\j_reg[8]_i_2_n_4 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \j[9]_i_1 
       (.I0(\j_reg[12]_i_2_n_7 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\j[9]_i_1_n_0 ));
  FDCE \j_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[0]_i_1_n_0 ),
        .Q(\j_reg_n_0_[0] ));
  FDCE \j_reg[10] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[10]_i_1_n_0 ),
        .Q(\j_reg_n_0_[10] ));
  FDCE \j_reg[11] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[11]_i_1_n_0 ),
        .Q(\j_reg_n_0_[11] ));
  FDCE \j_reg[12] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[12]_i_1_n_0 ),
        .Q(\j_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[12]_i_2 
       (.CI(\j_reg[8]_i_2_n_0 ),
        .CO({\j_reg[12]_i_2_n_0 ,\j_reg[12]_i_2_n_1 ,\j_reg[12]_i_2_n_2 ,\j_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg[12]_i_2_n_4 ,\j_reg[12]_i_2_n_5 ,\j_reg[12]_i_2_n_6 ,\j_reg[12]_i_2_n_7 }),
        .S({\j_reg_n_0_[12] ,\j_reg_n_0_[11] ,\j_reg_n_0_[10] ,\j_reg_n_0_[9] }));
  FDCE \j_reg[13] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[13]_i_1_n_0 ),
        .Q(\j_reg_n_0_[13] ));
  FDCE \j_reg[14] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[14]_i_1_n_0 ),
        .Q(\j_reg_n_0_[14] ));
  FDCE \j_reg[15] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[15]_i_1_n_0 ),
        .Q(\j_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[15]_i_2 
       (.CI(\j_reg[12]_i_2_n_0 ),
        .CO({\NLW_j_reg[15]_i_2_CO_UNCONNECTED [3:2],\j_reg[15]_i_2_n_2 ,\j_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_j_reg[15]_i_2_O_UNCONNECTED [3],\j_reg[15]_i_2_n_5 ,\j_reg[15]_i_2_n_6 ,\j_reg[15]_i_2_n_7 }),
        .S({1'b0,\j_reg_n_0_[15] ,\j_reg_n_0_[14] ,\j_reg_n_0_[13] }));
  FDCE \j_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[1]_i_1_n_0 ),
        .Q(\j_reg_n_0_[1] ));
  FDCE \j_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[2]_i_1_n_0 ),
        .Q(\j_reg_n_0_[2] ));
  FDCE \j_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[3]_i_1_n_0 ),
        .Q(\j_reg_n_0_[3] ));
  FDCE \j_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[4]_i_1_n_0 ),
        .Q(\j_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\j_reg[4]_i_2_n_0 ,\j_reg[4]_i_2_n_1 ,\j_reg[4]_i_2_n_2 ,\j_reg[4]_i_2_n_3 }),
        .CYINIT(\j_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg[4]_i_2_n_4 ,\j_reg[4]_i_2_n_5 ,\j_reg[4]_i_2_n_6 ,\j_reg[4]_i_2_n_7 }),
        .S({\j_reg_n_0_[4] ,\j_reg_n_0_[3] ,\j_reg_n_0_[2] ,\j_reg_n_0_[1] }));
  FDCE \j_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[5]_i_1_n_0 ),
        .Q(\j_reg_n_0_[5] ));
  FDCE \j_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[6]_i_1_n_0 ),
        .Q(\j_reg_n_0_[6] ));
  FDCE \j_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[7]_i_1_n_0 ),
        .Q(\j_reg_n_0_[7] ));
  FDCE \j_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[8]_i_1_n_0 ),
        .Q(\j_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \j_reg[8]_i_2 
       (.CI(\j_reg[4]_i_2_n_0 ),
        .CO({\j_reg[8]_i_2_n_0 ,\j_reg[8]_i_2_n_1 ,\j_reg[8]_i_2_n_2 ,\j_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\j_reg[8]_i_2_n_4 ,\j_reg[8]_i_2_n_5 ,\j_reg[8]_i_2_n_6 ,\j_reg[8]_i_2_n_7 }),
        .S({\j_reg_n_0_[8] ,\j_reg_n_0_[7] ,\j_reg_n_0_[6] ,\j_reg_n_0_[5] }));
  FDCE \j_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_state_reg_n_0_[2] ),
        .CLR(done_i_2_n_0),
        .D(\j[9]_i_1_n_0 ),
        .Q(\j_reg_n_0_[9] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry
       (.CI(1'b0),
        .CO({k0_carry_n_0,k0_carry_n_1,k0_carry_n_2,k0_carry_n_3}),
        .CYINIT(\k_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({k0_carry_n_4,k0_carry_n_5,k0_carry_n_6,k0_carry_n_7}),
        .S({\k_reg_n_0_[4] ,\k_reg_n_0_[3] ,\k_reg_n_0_[2] ,\k_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__0
       (.CI(k0_carry_n_0),
        .CO({k0_carry__0_n_0,k0_carry__0_n_1,k0_carry__0_n_2,k0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({k0_carry__0_n_4,k0_carry__0_n_5,k0_carry__0_n_6,k0_carry__0_n_7}),
        .S({\k_reg_n_0_[8] ,\k_reg_n_0_[7] ,\k_reg_n_0_[6] ,\k_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__1
       (.CI(k0_carry__0_n_0),
        .CO({k0_carry__1_n_0,k0_carry__1_n_1,k0_carry__1_n_2,k0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({k0_carry__1_n_4,k0_carry__1_n_5,k0_carry__1_n_6,k0_carry__1_n_7}),
        .S({\k_reg_n_0_[12] ,\k_reg_n_0_[11] ,\k_reg_n_0_[10] ,\k_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 k0_carry__2
       (.CI(k0_carry__1_n_0),
        .CO({NLW_k0_carry__2_CO_UNCONNECTED[3:2],k0_carry__2_n_2,k0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_k0_carry__2_O_UNCONNECTED[3],k0_carry__2_n_5,k0_carry__2_n_6,k0_carry__2_n_7}),
        .S({1'b0,\k_reg_n_0_[15] ,\k_reg_n_0_[14] ,\k_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\k_reg_n_0_[0] ),
        .O(\k[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__1_n_6),
        .O(\k[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__1_n_5),
        .O(\k[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__1_n_4),
        .O(\k[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__2_n_7),
        .O(\k[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__2_n_6),
        .O(\k[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \k[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(k));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__2_n_5),
        .O(\k[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry_n_7),
        .O(\k[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry_n_6),
        .O(\k[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry_n_5),
        .O(\k[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry_n_4),
        .O(\k[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__0_n_7),
        .O(\k[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__0_n_6),
        .O(\k[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__0_n_5),
        .O(\k[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__0_n_4),
        .O(\k[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(k0_carry__1_n_7),
        .O(\k[9]_i_1_n_0 ));
  FDCE \k_reg[0] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[0]_i_1_n_0 ),
        .Q(\k_reg_n_0_[0] ));
  FDCE \k_reg[10] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[10]_i_1_n_0 ),
        .Q(\k_reg_n_0_[10] ));
  FDCE \k_reg[11] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[11]_i_1_n_0 ),
        .Q(\k_reg_n_0_[11] ));
  FDCE \k_reg[12] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[12]_i_1_n_0 ),
        .Q(\k_reg_n_0_[12] ));
  FDCE \k_reg[13] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[13]_i_1_n_0 ),
        .Q(\k_reg_n_0_[13] ));
  FDCE \k_reg[14] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[14]_i_1_n_0 ),
        .Q(\k_reg_n_0_[14] ));
  FDCE \k_reg[15] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[15]_i_2_n_0 ),
        .Q(\k_reg_n_0_[15] ));
  FDCE \k_reg[1] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[1]_i_1_n_0 ),
        .Q(\k_reg_n_0_[1] ));
  FDCE \k_reg[2] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[2]_i_1_n_0 ),
        .Q(\k_reg_n_0_[2] ));
  FDCE \k_reg[3] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[3]_i_1_n_0 ),
        .Q(\k_reg_n_0_[3] ));
  FDCE \k_reg[4] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[4]_i_1_n_0 ),
        .Q(\k_reg_n_0_[4] ));
  FDCE \k_reg[5] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[5]_i_1_n_0 ),
        .Q(\k_reg_n_0_[5] ));
  FDCE \k_reg[6] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[6]_i_1_n_0 ),
        .Q(\k_reg_n_0_[6] ));
  FDCE \k_reg[7] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[7]_i_1_n_0 ),
        .Q(\k_reg_n_0_[7] ));
  FDCE \k_reg[8] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[8]_i_1_n_0 ),
        .Q(\k_reg_n_0_[8] ));
  FDCE \k_reg[9] 
       (.C(clk),
        .CE(k),
        .CLR(done_i_2_n_0),
        .D(\k[9]_i_1_n_0 ),
        .Q(\k_reg_n_0_[9] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vit_top
   (inference_done,
    clk,
    rst_n);
  output inference_done;
  input clk;
  input rst_n;

  wire clk;
  wire inference_done;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_systolic_gemm__parameterized0 classification_head
       (.clk(clk),
        .inference_done(inference_done),
        .rst_n(rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
