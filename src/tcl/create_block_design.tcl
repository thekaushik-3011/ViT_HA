# ============================================================
# create_block_design.tcl
# Run from Vivado Tcl Console:
#   source <path_to_project>/src/tcl/create_block_design.tcl
# ============================================================

# Create block design
create_bd_design "mlp_system"

# -------------------------------------------------------
# 1. Add Zynq PS7
# -------------------------------------------------------
set ps7 [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7_0]

# Apply PYNQ-Z2 board preset (enables HP0 slave AXI port for DMA)
set_property -dict [list \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
] $ps7

apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" apply_board_preset "1"} $ps7

# -------------------------------------------------------
# 2. Add AXI DMA (drives AXI Stream to/from your MLP)
# -------------------------------------------------------
set dma [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0]
set_property -dict [list \
    CONFIG.c_include_sg {0} \
    CONFIG.c_sg_include_stscntrl_strm {0} \
    CONFIG.c_m_axi_mm2s_data_width {128} \
    CONFIG.c_m_axis_mm2s_tdata_width {128} \
    CONFIG.c_s_axis_s2mm_tdata_width {128} \
    CONFIG.c_m_axi_s2mm_data_width {128} \
] $dma

# -------------------------------------------------------
# 3. Add your RTL wrapper as a module reference
# -------------------------------------------------------
set mlp [create_bd_cell -type module -reference axi_mlp_wrapper mlp_0]

# -------------------------------------------------------
# 4. Add Processor System Reset
# -------------------------------------------------------
set rst [create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0]

# -------------------------------------------------------
# 5. Add AXI Interconnect for DMA <-> PS HP0
# -------------------------------------------------------
set ic [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0]
set_property CONFIG.NUM_MI {1} $ic

# -------------------------------------------------------
# 6. Clock & Reset connections
# -------------------------------------------------------
connect_bd_net [get_bd_pins ps7_0/FCLK_CLK0] \
    [get_bd_pins mlp_0/aclk] \
    [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] \
    [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] \
    [get_bd_pins axi_dma_0/s_axi_lite_aclk] \
    [get_bd_pins proc_sys_reset_0/slowest_sync_clk] \
    [get_bd_pins axi_interconnect_0/ACLK] \
    [get_bd_pins axi_interconnect_0/S00_ACLK] \
    [get_bd_pins axi_interconnect_0/M00_ACLK] \
    [get_bd_pins ps7_0/S_AXI_HP0_ACLK]

connect_bd_net [get_bd_pins ps7_0/FCLK_RESET0_N] \
    [get_bd_pins proc_sys_reset_0/ext_reset_in]

connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] \
    [get_bd_pins mlp_0/aresetn] \
    [get_bd_pins axi_dma_0/axi_resetn] \
    [get_bd_pins axi_interconnect_0/ARESETN] \
    [get_bd_pins axi_interconnect_0/S00_ARESETN] \
    [get_bd_pins axi_interconnect_0/M00_ARESETN]

# -------------------------------------------------------
# 7. AXI Stream: DMA MM2S -> MLP North input
# -------------------------------------------------------
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] \
    [get_bd_intf_pins mlp_0/s_axis_n]

# -------------------------------------------------------
# 8. AXI Stream: MLP South output -> DMA S2MM
# -------------------------------------------------------
connect_bd_intf_net [get_bd_intf_pins mlp_0/m_axis_s] \
    [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

# -------------------------------------------------------
# 9. DMA AXI Master -> PS HP0 via interconnect
# -------------------------------------------------------
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] \
    [get_bd_intf_pins axi_interconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_interconnect_0/M00_AXI] \
    [get_bd_intf_pins ps7_0/S_AXI_HP0]

# -------------------------------------------------------
# 10. DMA AXI-Lite control from PS GP0
# -------------------------------------------------------
apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config {Master "/ps7_0/M_AXI_GP0" Clk "Auto"} \
    [get_bd_intf_pins axi_dma_0/S_AXI_LITE]

# -------------------------------------------------------
# 11. Tie control ports to constants (adjustable from PS via GPIO later)
# -------------------------------------------------------
set const_0 [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0]
set_property CONFIG.CONST_VAL {0} $const_0

connect_bd_net [get_bd_pins xlconstant_0/dout] \
    [get_bd_pins mlp_0/ctrl_mode] \
    [get_bd_pins mlp_0/ctrl_load] \
    [get_bd_pins mlp_0/ctrl_clear] \
    [get_bd_pins mlp_0/ctrl_bypass_gelu]

# -------------------------------------------------------
# 12. Validate and save
# -------------------------------------------------------
validate_bd_design
save_bd_design

# Generate HDL wrapper for the block design
make_wrapper -files [get_files mlp_system.bd] -top
add_files -norecurse [get_files -of_objects [get_filesets sources_1] \
    -filter {NAME =~ *mlp_system_wrapper*}]

set_property top mlp_system_wrapper [current_fileset]
update_compile_order -fileset sources_1

puts "Block design created. You can now run synthesis and implementation."
