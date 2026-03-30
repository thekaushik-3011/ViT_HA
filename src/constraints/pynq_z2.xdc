# PYNQ-Z2 Master Constraints for axi_mlp_wrapper
# Clock: 125MHz from PS (use 100MHz for conservative timing)
create_clock -period 10.000 -name aclk [get_ports aclk]

# If using PL fabric clock from PS, no physical pin needed for aclk/aresetn
# These are driven internally by the Zynq PS block via FCLK_CLK0

# AXI Stream ports - assign to PMOD or leave unassigned if using PS-PL AXI
# For PS-PL integration (recommended), remove all set_property pin assignments
# and connect via block design instead.

# Tie unused I/O warnings off
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
