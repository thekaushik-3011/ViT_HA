// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Mar 30 20:26:07 2026
// Host        : aetherion running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/salla-kaushik/hw4ai_project/hw4ai_project.gen/sources_1/bd/design_1/ip/design_1_axi_mlp_wrapper_0_0/design_1_axi_mlp_wrapper_0_0_stub.v
// Design      : design_1_axi_mlp_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_axi_mlp_wrapper_0_0,axi_mlp_wrapper,{}" *) (* CORE_GENERATION_INFO = "design_1_axi_mlp_wrapper_0_0,axi_mlp_wrapper,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_mlp_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "axi_mlp_wrapper,Vivado 2025.1" *) 
module design_1_axi_mlp_wrapper_0_0(aclk, aresetn, ctrl_mode, ctrl_load, ctrl_clear, 
  ctrl_bypass_gelu, s_axis_n_tdata, s_axis_n_tvalid, s_axis_n_tready, s_axis_n_tlast, 
  s_axis_w_tdata, s_axis_w_tvalid, s_axis_w_tready, s_axis_w_tlast, m_axis_s_tdata, 
  m_axis_s_tvalid, m_axis_s_tready, m_axis_s_tlast)
/* synthesis syn_black_box black_box_pad_pin="aresetn,ctrl_mode,ctrl_load,ctrl_clear,ctrl_bypass_gelu,s_axis_n_tdata[127:0],s_axis_n_tvalid,s_axis_n_tready,s_axis_n_tlast,s_axis_w_tdata[127:0],s_axis_w_tvalid,s_axis_w_tready,s_axis_w_tlast,m_axis_s_tdata[127:0],m_axis_s_tvalid,m_axis_s_tready,m_axis_s_tlast" */
/* synthesis syn_force_seq_prim="aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_s:s_axis_n:s_axis_w, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input ctrl_mode;
  input ctrl_load;
  input ctrl_clear;
  input ctrl_bypass_gelu;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_n TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_n, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_n_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_n TVALID" *) input s_axis_n_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_n TREADY" *) output s_axis_n_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_n TLAST" *) input s_axis_n_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_w TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_w, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_w_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_w TVALID" *) input s_axis_w_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_w TREADY" *) output s_axis_w_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_w TLAST" *) input s_axis_w_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_s, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_axis_s_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s TVALID" *) output m_axis_s_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s TREADY" *) input m_axis_s_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_s TLAST" *) output m_axis_s_tlast;
endmodule
