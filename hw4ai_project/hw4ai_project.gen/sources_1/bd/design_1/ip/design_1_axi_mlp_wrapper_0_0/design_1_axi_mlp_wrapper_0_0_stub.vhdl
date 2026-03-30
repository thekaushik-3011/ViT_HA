-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Mar 30 20:26:07 2026
-- Host        : aetherion running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/salla-kaushik/hw4ai_project/hw4ai_project.gen/sources_1/bd/design_1/ip/design_1_axi_mlp_wrapper_0_0/design_1_axi_mlp_wrapper_0_0_stub.vhdl
-- Design      : design_1_axi_mlp_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axi_mlp_wrapper_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ctrl_mode : in STD_LOGIC;
    ctrl_load : in STD_LOGIC;
    ctrl_clear : in STD_LOGIC;
    ctrl_bypass_gelu : in STD_LOGIC;
    s_axis_n_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_n_tvalid : in STD_LOGIC;
    s_axis_n_tready : out STD_LOGIC;
    s_axis_n_tlast : in STD_LOGIC;
    s_axis_w_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_w_tvalid : in STD_LOGIC;
    s_axis_w_tready : out STD_LOGIC;
    s_axis_w_tlast : in STD_LOGIC;
    m_axis_s_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_s_tvalid : out STD_LOGIC;
    m_axis_s_tready : in STD_LOGIC;
    m_axis_s_tlast : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_mlp_wrapper_0_0 : entity is "design_1_axi_mlp_wrapper_0_0,axi_mlp_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_axi_mlp_wrapper_0_0 : entity is "design_1_axi_mlp_wrapper_0_0,axi_mlp_wrapper,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_mlp_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_mlp_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi_mlp_wrapper_0_0 : entity is "module_ref";
end design_1_axi_mlp_wrapper_0_0;

architecture stub of design_1_axi_mlp_wrapper_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,ctrl_mode,ctrl_load,ctrl_clear,ctrl_bypass_gelu,s_axis_n_tdata[127:0],s_axis_n_tvalid,s_axis_n_tready,s_axis_n_tlast,s_axis_w_tdata[127:0],s_axis_w_tvalid,s_axis_w_tready,s_axis_w_tlast,m_axis_s_tdata[127:0],m_axis_s_tvalid,m_axis_s_tready,m_axis_s_tlast";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_s:s_axis_n:s_axis_w, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_n_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_n TDATA";
  attribute X_INTERFACE_MODE of s_axis_n_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_n_tdata : signal is "XIL_INTERFACENAME s_axis_n, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_n_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_n TVALID";
  attribute X_INTERFACE_INFO of s_axis_n_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_n TREADY";
  attribute X_INTERFACE_INFO of s_axis_n_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_n TLAST";
  attribute X_INTERFACE_INFO of s_axis_w_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_w TDATA";
  attribute X_INTERFACE_MODE of s_axis_w_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_w_tdata : signal is "XIL_INTERFACENAME s_axis_w, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_w_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_w TVALID";
  attribute X_INTERFACE_INFO of s_axis_w_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_w TREADY";
  attribute X_INTERFACE_INFO of s_axis_w_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_w TLAST";
  attribute X_INTERFACE_INFO of m_axis_s_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_s TDATA";
  attribute X_INTERFACE_MODE of m_axis_s_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_s_tdata : signal is "XIL_INTERFACENAME m_axis_s, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_s_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_s TVALID";
  attribute X_INTERFACE_INFO of m_axis_s_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_s TREADY";
  attribute X_INTERFACE_INFO of m_axis_s_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_s TLAST";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axi_mlp_wrapper,Vivado 2025.1";
begin
end;
