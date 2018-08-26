
################################################################
# This is a generated script based on design: shell
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
#set scripts_vivado_version 2018.2
#set current_vivado_version [version -short]
#
#if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
#   puts ""
#   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}
#
#   return 1
#}
#
################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source shell_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku115-flva1517-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name shell

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_bram_ctrl:4.0\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:system_ila:1.1\
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:vio:3.0\
xilinx.com:ip:util_ds_buf:2.1\
xilinx.com:ip:xdma:4.1\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:microblaze:10.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:ddr4:2.2\
xilinx.com:ip:axi_10g_ethernet:3.1\
dlyma.org:dlyma:network_packet_fifo_rx:1.1\
dlyma.org:dlyma:network_packet_fifo_tx:1.1\
xilinx.com:ip:axis_register_slice:1.1\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: network
proc create_hier_cell_network { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_network() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS

  # Create pins
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir I -type clk clk_100
  create_bd_pin -dir O -type clk clk_156
  create_bd_pin -dir O network_reset_done
  create_bd_pin -dir I refclk_n
  create_bd_pin -dir I refclk_p
  create_bd_pin -dir I -from 0 -to 0 -type rst reset
  create_bd_pin -dir O rx_statistics_valid
  create_bd_pin -dir O -from 29 -to 0 rx_statistics_vector
  create_bd_pin -dir I rxn
  create_bd_pin -dir I rxp
  create_bd_pin -dir O tx_statistics_valid
  create_bd_pin -dir O -from 25 -to 0 tx_statistics_vector
  create_bd_pin -dir O txn
  create_bd_pin -dir O txp

  # Create instance: axi_10g_ethernet_0, and set properties
  set axi_10g_ethernet_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_10g_ethernet axi_10g_ethernet_0 ]
  set_property -dict [ list \
   CONFIG.Locations {X1Y12} \
   CONFIG.Management_Interface {false} \
   CONFIG.SupportLevel {1} \
   CONFIG.base_kr {BASE-R} \
 ] $axi_10g_ethernet_0

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/coreclk_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/qpll0outrefclk_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/rxrecclk_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.ASSOCIATED_BUSIF {m_axis_rx:s_axis_pause:s_axis_tx} \
   CONFIG.ASSOCIATED_ASYNC_RESET {tx_axis_aresetn:rx_axis_aresetn} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/txusrclk2_out]

  set_property -dict [ list \
   CONFIG.FREQ_HZ {312500000} \
 ] [get_bd_pins /network/axi_10g_ethernet_0/txusrclk_out]

  # Create instance: gnd, and set properties
  set gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant gnd ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $gnd

  # Create instance: ifg_delay, and set properties
  set ifg_delay [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant ifg_delay ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $ifg_delay

  # Create instance: mac_config_vector, and set properties
  set mac_config_vector [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant mac_config_vector ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {22} \
   CONFIG.CONST_WIDTH {80} \
 ] $mac_config_vector

  # Create instance: network_packet_fifo_0, and set properties
  set network_packet_fifo_0 [ create_bd_cell -type ip -vlnv dlyma.org:dlyma:network_packet_fifo_rx network_packet_fifo_0 ]

  # Create instance: network_packet_fifo_1, and set properties
  set network_packet_fifo_1 [ create_bd_cell -type ip -vlnv dlyma.org:dlyma:network_packet_fifo_tx network_packet_fifo_1 ]

  # Create instance: pcs_config_vector, and set properties
  set pcs_config_vector [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant pcs_config_vector ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {536} \
 ] $pcs_config_vector

  # Create instance: rx_register_slice_1, and set properties
  set rx_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice rx_register_slice_1 ]
  set_property -dict [ list \
   CONFIG.TUSER_WIDTH {0} \
 ] $rx_register_slice_1

  # Create instance: tx_register_slice_0, and set properties
  set tx_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice tx_register_slice_0 ]
  set_property -dict [ list \
   CONFIG.TUSER_WIDTH {0} \
 ] $tx_register_slice_0

  # Create instance: vcc, and set properties
  set vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant vcc ]

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_pins S_AXIS] [get_bd_intf_pins tx_register_slice_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_10g_ethernet_0_m_axis_rx [get_bd_intf_pins axi_10g_ethernet_0/m_axis_rx] [get_bd_intf_pins network_packet_fifo_0/s_axis]
  connect_bd_intf_net -intf_net network_packet_fifo_0_m_axis [get_bd_intf_pins network_packet_fifo_0/m_axis] [get_bd_intf_pins rx_register_slice_1/S_AXIS]
  connect_bd_intf_net -intf_net network_packet_fifo_1_m_axis [get_bd_intf_pins axi_10g_ethernet_0/s_axis_tx] [get_bd_intf_pins network_packet_fifo_1/m_axis]
  connect_bd_intf_net -intf_net rx_register_slice_1_M_AXIS [get_bd_intf_pins M_AXIS] [get_bd_intf_pins rx_register_slice_1/M_AXIS]
  connect_bd_intf_net -intf_net tx_register_slice_0_M_AXIS [get_bd_intf_pins network_packet_fifo_1/s_axis] [get_bd_intf_pins tx_register_slice_0/M_AXIS]

  # Create port connections
  connect_bd_net -net axi_10g_ethernet_0_resetdone_out [get_bd_pins network_reset_done] [get_bd_pins axi_10g_ethernet_0/resetdone_out]
  connect_bd_net -net axi_10g_ethernet_0_rx_statistics_valid [get_bd_pins rx_statistics_valid] [get_bd_pins axi_10g_ethernet_0/rx_statistics_valid] [get_bd_pins network_packet_fifo_0/rx_statistics_valid]
  connect_bd_net -net axi_10g_ethernet_0_rx_statistics_vector [get_bd_pins rx_statistics_vector] [get_bd_pins axi_10g_ethernet_0/rx_statistics_vector] [get_bd_pins network_packet_fifo_0/rx_statistics_vector]
  connect_bd_net -net axi_10g_ethernet_0_tx_statistics_valid [get_bd_pins tx_statistics_valid] [get_bd_pins axi_10g_ethernet_0/tx_statistics_valid]
  connect_bd_net -net axi_10g_ethernet_0_tx_statistics_vector [get_bd_pins tx_statistics_vector] [get_bd_pins axi_10g_ethernet_0/tx_statistics_vector]
  connect_bd_net -net axi_10g_ethernet_0_txn [get_bd_pins txn] [get_bd_pins axi_10g_ethernet_0/txn]
  connect_bd_net -net axi_10g_ethernet_0_txp [get_bd_pins txp] [get_bd_pins axi_10g_ethernet_0/txp]
  connect_bd_net -net axi_10g_ethernet_0_txusrclk2_out [get_bd_pins clk_156] [get_bd_pins axi_10g_ethernet_0/txusrclk2_out] [get_bd_pins network_packet_fifo_0/aclk] [get_bd_pins network_packet_fifo_1/aclk] [get_bd_pins rx_register_slice_1/aclk] [get_bd_pins tx_register_slice_0/aclk]
  connect_bd_net -net dclk_1 [get_bd_pins clk_100] [get_bd_pins axi_10g_ethernet_0/dclk]
  connect_bd_net -net gnd_dout [get_bd_pins axi_10g_ethernet_0/sim_speedup_control] [get_bd_pins axi_10g_ethernet_0/tx_fault] [get_bd_pins gnd/dout]
  connect_bd_net -net ifg_delay_dout [get_bd_pins axi_10g_ethernet_0/tx_ifg_delay] [get_bd_pins ifg_delay/dout]
  connect_bd_net -net mac_config_vector_dout [get_bd_pins axi_10g_ethernet_0/mac_rx_configuration_vector] [get_bd_pins axi_10g_ethernet_0/mac_tx_configuration_vector] [get_bd_pins mac_config_vector/dout]
  connect_bd_net -net pcs_config_vector_dout [get_bd_pins axi_10g_ethernet_0/pcs_pma_configuration_vector] [get_bd_pins pcs_config_vector/dout]
  connect_bd_net -net refclk_n_1 [get_bd_pins refclk_n] [get_bd_pins axi_10g_ethernet_0/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_pins refclk_p] [get_bd_pins axi_10g_ethernet_0/refclk_p]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins axi_10g_ethernet_0/reset]
  connect_bd_net -net rxn_1 [get_bd_pins rxn] [get_bd_pins axi_10g_ethernet_0/rxn]
  connect_bd_net -net rxp_1 [get_bd_pins rxp] [get_bd_pins axi_10g_ethernet_0/rxp]
  connect_bd_net -net tx_axis_aresetn_1 [get_bd_pins aresetn] [get_bd_pins axi_10g_ethernet_0/rx_axis_aresetn] [get_bd_pins axi_10g_ethernet_0/tx_axis_aresetn] [get_bd_pins network_packet_fifo_0/aresetn] [get_bd_pins network_packet_fifo_1/aresetn] [get_bd_pins rx_register_slice_1/aresetn] [get_bd_pins tx_register_slice_0/aresetn]
  connect_bd_net -net vcc_dout [get_bd_pins axi_10g_ethernet_0/signal_detect] [get_bd_pins vcc/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: mem_interface
proc create_hier_cell_mem_interface { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mem_interface() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MEM_AXI_0
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 MEM_AXI_1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 PCIE_AXI

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 ARESETN
  create_bd_pin -dir I -type clk PCIE_ACLK
  create_bd_pin -dir I -type rst S_ARESETN
  create_bd_pin -dir O c0_ddr4_act_n
  create_bd_pin -dir O -from 16 -to 0 c0_ddr4_adr
  create_bd_pin -dir O -from 1 -to 0 c0_ddr4_ba
  create_bd_pin -dir O -from 1 -to 0 c0_ddr4_bg
  create_bd_pin -dir O -from 0 -to 0 -type clk c0_ddr4_ck_c
  create_bd_pin -dir O -from 0 -to 0 -type clk c0_ddr4_ck_t
  create_bd_pin -dir O -from 0 -to 0 c0_ddr4_cke
  create_bd_pin -dir O -from 0 -to 0 c0_ddr4_cs_n
  create_bd_pin -dir IO -from 63 -to 0 c0_ddr4_dg
  create_bd_pin -dir IO -from 7 -to 0 c0_ddr4_dm_dbi_n
  create_bd_pin -dir IO -from 7 -to 0 c0_ddr4_dqs_c
  create_bd_pin -dir IO -from 7 -to 0 c0_ddr4_dqs_t
  create_bd_pin -dir O -from 0 -to 0 c0_ddr4_odt
  create_bd_pin -dir O c0_ddr4_reset_n
  create_bd_pin -dir I -type clk c0_sys_clk_n
  create_bd_pin -dir I -type clk c0_sys_clk_p
  create_bd_pin -dir O c1_ddr4_act_n
  create_bd_pin -dir O -from 16 -to 0 c1_ddr4_adr
  create_bd_pin -dir O -from 1 -to 0 c1_ddr4_ba
  create_bd_pin -dir O -from 1 -to 0 c1_ddr4_bg
  create_bd_pin -dir O -from 0 -to 0 -type clk c1_ddr4_ck_c
  create_bd_pin -dir O -from 0 -to 0 -type clk c1_ddr4_ck_t
  create_bd_pin -dir O -from 0 -to 0 c1_ddr4_cke
  create_bd_pin -dir O -from 0 -to 0 c1_ddr4_cs_n
  create_bd_pin -dir IO -from 7 -to 0 c1_ddr4_dm_dbi_n
  create_bd_pin -dir IO -from 63 -to 0 c1_ddr4_dq
  create_bd_pin -dir IO -from 7 -to 0 c1_ddr4_dqs_c
  create_bd_pin -dir IO -from 7 -to 0 c1_ddr4_dqs_t
  create_bd_pin -dir O -from 0 -to 0 c1_ddr4_odt
  create_bd_pin -dir O c1_ddr4_reset_n
  create_bd_pin -dir I -type clk c1_sys_clk_n
  create_bd_pin -dir I -type clk c1_sys_clk_p
  create_bd_pin -dir I -type clk clk156_25
  create_bd_pin -dir I -from 0 -to 0 -type rst sys_rst

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.C0.ADDR_WIDTH {17} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.DDR4_AxiAddressWidth {33} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CasLatency {18} \
   CONFIG.C0.DDR4_CasWriteLatency {11} \
   CONFIG.C0.DDR4_CustomParts {../../../../imports/srcs/custom_parts_2133.csv} \
   CONFIG.C0.DDR4_DataWidth {64} \
   CONFIG.C0.DDR4_InputClockPeriod {3338} \
   CONFIG.C0.DDR4_MemoryPart {CUSTOM_DBI_MT40A1G8PM-083E} \
   CONFIG.C0.DDR4_TimePeriod {939} \
   CONFIG.C0.DDR4_isCustom {true} \
   CONFIG.Simulation_Mode {Unisim} \
 ] $ddr4_0

  # Create instance: ddr4_1, and set properties
  set ddr4_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4 ddr4_1 ]
  set_property -dict [ list \
   CONFIG.C0.ADDR_WIDTH {17} \
   CONFIG.C0.BANK_GROUP_WIDTH {2} \
   CONFIG.C0.DDR4_AxiAddressWidth {33} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CasLatency {18} \
   CONFIG.C0.DDR4_CasWriteLatency {11} \
   CONFIG.C0.DDR4_CustomParts {../../../../imports/srcs/custom_parts_2133.csv} \
   CONFIG.C0.DDR4_DataWidth {64} \
   CONFIG.C0.DDR4_InputClockPeriod {3338} \
   CONFIG.C0.DDR4_MemoryPart {CUSTOM_DBI_MT40A1G8PM-083E} \
   CONFIG.C0.DDR4_TimePeriod {939} \
   CONFIG.C0.DDR4_isCustom {true} \
   CONFIG.Simulation_Mode {Unisim} \
 ] $ddr4_1

  # Create instance: mem_interconnect, and set properties
  set mem_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect mem_interconnect ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_REGSLICE {3} \
   CONFIG.S03_HAS_REGSLICE {3} \
   CONFIG.STRATEGY {2} \
   CONFIG.SYNCHRONIZATION_STAGES {3} \
   CONFIG.XBAR_DATA_WIDTH {512} \
 ] $mem_interconnect

  # Create instance: mem_interconnect_1, and set properties
  set mem_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect mem_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_REGSLICE {3} \
   CONFIG.S03_HAS_REGSLICE {3} \
   CONFIG.STRATEGY {0} \
   CONFIG.SYNCHRONIZATION_STAGES {3} \
   CONFIG.XBAR_DATA_WIDTH {512} \
 ] $mem_interconnect_1

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset proc_sys_reset_1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
 ] $proc_sys_reset_1

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_5 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_5

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins PCIE_AXI] [get_bd_intf_pins mem_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins MEM_AXI_0] [get_bd_intf_pins mem_interconnect/S01_AXI]
  connect_bd_intf_net -intf_net MEM_AXI_1_1 [get_bd_intf_pins MEM_AXI_1] [get_bd_intf_pins mem_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net mem_interconnect_1_M00_AXI [get_bd_intf_pins ddr4_1/C0_DDR4_S_AXI] [get_bd_intf_pins mem_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net pcie_interconnect_M00_AXI [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI] [get_bd_intf_pins mem_interconnect/M00_AXI]

  # Create port connections
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins ddr4_1/c0_ddr4_aresetn] [get_bd_pins mem_interconnect/M00_ARESETN] [get_bd_pins mem_interconnect_1/M00_ARESETN] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net Net [get_bd_pins c1_ddr4_dqs_t] [get_bd_pins ddr4_1/c0_ddr4_dqs_t]
  connect_bd_net -net Net1 [get_bd_pins c1_ddr4_dqs_c] [get_bd_pins ddr4_1/c0_ddr4_dqs_c]
  connect_bd_net -net Net2 [get_bd_pins c1_ddr4_dm_dbi_n] [get_bd_pins ddr4_1/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net3 [get_bd_pins c1_ddr4_dq] [get_bd_pins ddr4_1/c0_ddr4_dq]
  connect_bd_net -net Net4 [get_bd_pins c0_ddr4_dm_dbi_n] [get_bd_pins ddr4_0/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net5 [get_bd_pins c0_ddr4_dqs_c] [get_bd_pins ddr4_0/c0_ddr4_dqs_c]
  connect_bd_net -net Net6 [get_bd_pins c0_ddr4_dqs_t] [get_bd_pins ddr4_0/c0_ddr4_dqs_t]
  connect_bd_net -net Net7 [get_bd_pins c0_ddr4_dg] [get_bd_pins ddr4_0/c0_ddr4_dq]
  connect_bd_net -net S00_ACLK_1 [get_bd_pins PCIE_ACLK] [get_bd_pins mem_interconnect/S00_ACLK]
  connect_bd_net -net S01_ARESETN_1 [get_bd_pins S_ARESETN] [get_bd_pins mem_interconnect/S00_ARESETN] [get_bd_pins mem_interconnect/S01_ARESETN] [get_bd_pins mem_interconnect_1/S00_ARESETN]
  connect_bd_net -net c1_sys_clk_n_1 [get_bd_pins c0_sys_clk_n] [get_bd_pins ddr4_0/c0_sys_clk_n]
  connect_bd_net -net c1_sys_clk_n_2 [get_bd_pins c1_sys_clk_n] [get_bd_pins ddr4_1/c0_sys_clk_n]
  connect_bd_net -net c1_sys_clk_p_1 [get_bd_pins c0_sys_clk_p] [get_bd_pins ddr4_0/c0_sys_clk_p]
  connect_bd_net -net c1_sys_clk_p_2 [get_bd_pins c1_sys_clk_p] [get_bd_pins ddr4_1/c0_sys_clk_p]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net ddr4_0_c0_init_calib_complete [get_bd_pins ARESETN] [get_bd_pins proc_sys_reset_1/ext_reset_in] [get_bd_pins util_vector_logic_5/Res]
  connect_bd_net -net ddr4_0_c0_init_calib_complete1 [get_bd_pins ddr4_0/c0_init_calib_complete] [get_bd_pins util_vector_logic_5/Op1]
  connect_bd_net -net ddr4_1_c0_ddr4_act_n [get_bd_pins c0_ddr4_act_n] [get_bd_pins ddr4_0/c0_ddr4_act_n]
  connect_bd_net -net ddr4_1_c0_ddr4_act_n1 [get_bd_pins c1_ddr4_act_n] [get_bd_pins ddr4_1/c0_ddr4_act_n]
  connect_bd_net -net ddr4_1_c0_ddr4_adr [get_bd_pins c0_ddr4_adr] [get_bd_pins ddr4_0/c0_ddr4_adr]
  connect_bd_net -net ddr4_1_c0_ddr4_adr1 [get_bd_pins c1_ddr4_adr] [get_bd_pins ddr4_1/c0_ddr4_adr]
  connect_bd_net -net ddr4_1_c0_ddr4_ba [get_bd_pins c0_ddr4_ba] [get_bd_pins ddr4_0/c0_ddr4_ba]
  connect_bd_net -net ddr4_1_c0_ddr4_ba1 [get_bd_pins c1_ddr4_ba] [get_bd_pins ddr4_1/c0_ddr4_ba]
  connect_bd_net -net ddr4_1_c0_ddr4_bg [get_bd_pins c0_ddr4_bg] [get_bd_pins ddr4_0/c0_ddr4_bg]
  connect_bd_net -net ddr4_1_c0_ddr4_bg1 [get_bd_pins c1_ddr4_bg] [get_bd_pins ddr4_1/c0_ddr4_bg]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_c [get_bd_pins c0_ddr4_ck_c] [get_bd_pins ddr4_0/c0_ddr4_ck_c]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_c1 [get_bd_pins c1_ddr4_ck_c] [get_bd_pins ddr4_1/c0_ddr4_ck_c]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_t [get_bd_pins c0_ddr4_ck_t] [get_bd_pins ddr4_0/c0_ddr4_ck_t]
  connect_bd_net -net ddr4_1_c0_ddr4_ck_t1 [get_bd_pins c1_ddr4_ck_t] [get_bd_pins ddr4_1/c0_ddr4_ck_t]
  connect_bd_net -net ddr4_1_c0_ddr4_cke [get_bd_pins c0_ddr4_cke] [get_bd_pins ddr4_0/c0_ddr4_cke]
  connect_bd_net -net ddr4_1_c0_ddr4_cke1 [get_bd_pins c1_ddr4_cke] [get_bd_pins ddr4_1/c0_ddr4_cke]
  connect_bd_net -net ddr4_1_c0_ddr4_cs_n [get_bd_pins c0_ddr4_cs_n] [get_bd_pins ddr4_0/c0_ddr4_cs_n]
  connect_bd_net -net ddr4_1_c0_ddr4_cs_n1 [get_bd_pins c1_ddr4_cs_n] [get_bd_pins ddr4_1/c0_ddr4_cs_n]
  connect_bd_net -net ddr4_1_c0_ddr4_odt [get_bd_pins c0_ddr4_odt] [get_bd_pins ddr4_0/c0_ddr4_odt]
  connect_bd_net -net ddr4_1_c0_ddr4_odt1 [get_bd_pins c1_ddr4_odt] [get_bd_pins ddr4_1/c0_ddr4_odt]
  connect_bd_net -net ddr4_1_c0_ddr4_reset_n [get_bd_pins c0_ddr4_reset_n] [get_bd_pins ddr4_0/c0_ddr4_reset_n]
  connect_bd_net -net ddr4_1_c0_ddr4_reset_n1 [get_bd_pins c1_ddr4_reset_n] [get_bd_pins ddr4_1/c0_ddr4_reset_n]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins mem_interconnect/ACLK] [get_bd_pins mem_interconnect/M00_ACLK] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk1 [get_bd_pins ddr4_1/c0_ddr4_ui_clk] [get_bd_pins mem_interconnect_1/ACLK] [get_bd_pins mem_interconnect_1/M00_ACLK]
  connect_bd_net -net ddr4_1_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_1/c0_ddr4_ui_clk_sync_rst] [get_bd_pins util_vector_logic_4/Op2]
  connect_bd_net -net ddr4_1_c0_init_calib_complete [get_bd_pins ddr4_1/c0_init_calib_complete] [get_bd_pins util_vector_logic_5/Op2]
  connect_bd_net -net m_axi_mm2s_aclk_1 [get_bd_pins clk156_25] [get_bd_pins mem_interconnect/S01_ACLK] [get_bd_pins mem_interconnect_1/S00_ACLK]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins mem_interconnect/ARESETN] [get_bd_pins mem_interconnect_1/ARESETN] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net sys_rst_1 [get_bd_pins sys_rst] [get_bd_pins ddr4_0/sys_rst] [get_bd_pins ddr4_1/sys_rst]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins proc_sys_reset_1/aux_reset_in] [get_bd_pins util_vector_logic_4/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: mb_system
proc create_hier_cell_mb_system { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mb_system() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 MB_AXI

  # Create pins
  create_bd_pin -dir I -type clk clk100
  create_bd_pin -dir I -type rst ext_reset_in

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm mdm_1 ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory $hier_obj microblaze_0_local_memory

  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset rst_clk_wiz_0_100M ]

  # Create interface connections
  connect_bd_intf_net -intf_net mdm_1_MBDEBUG_0 [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_DLMB [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ILMB [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins MB_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]

  # Create port connections
  connect_bd_net -net Clk_1 [get_bd_pins clk100] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
  connect_bd_net -net mdm_1_Debug_SYS_Rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PCIe
proc create_hier_cell_PCIe { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_PCIe() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN_D
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_LITE
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt

  # Create pins
  create_bd_pin -dir O -type clk axi_aclk
  create_bd_pin -dir O -type rst axi_aresetn
  create_bd_pin -dir I -type rst sys_rst_n

  # Create instance: util_ds_buf, and set properties
  set util_ds_buf [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf util_ds_buf ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma xdma_0 ]
  set_property -dict [ list \
   CONFIG.INS_LOSS_NYQ {5} \
   CONFIG.axi_data_width {256_bit} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axisten_freq {250} \
   CONFIG.cfg_mgmt_if {false} \
   CONFIG.ins_loss_profile {Chip-to-Chip} \
   CONFIG.mode_selection {Advanced} \
   CONFIG.pf0_device_id {8038} \
   CONFIG.pf0_interrupt_pin {NONE} \
   CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
   CONFIG.pl_link_cap_max_link_width {X8} \
   CONFIG.xdma_axi_intf_mm {AXI_Memory_Mapped} \
   CONFIG.xdma_rnum_chnl {4} \
   CONFIG.xdma_wnum_chnl {4} \
 ] $xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins pcie_mgt] [get_bd_intf_pins xdma_0/pcie_mgt]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins CLK_IN_D] [get_bd_intf_pins util_ds_buf/CLK_IN_D]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M_AXI_LITE] [get_bd_intf_pins xdma_0/M_AXI_LITE]

  # Create port connections
  connect_bd_net -net sys_rst_n_1 [get_bd_pins sys_rst_n] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net util_ds_buf_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf/IBUF_DS_ODIV2] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net util_ds_buf_IBUF_OUT [get_bd_pins util_ds_buf/IBUF_OUT] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins axi_aclk] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_0_axi_aresetn [get_bd_pins axi_aresetn] [get_bd_pins xdma_0/axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS ]
  set M_AXI_CONTROL [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_CONTROL ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   ] $M_AXI_CONTROL
  set S_AXIS [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS
  set S_AXI_MEM_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MEM_0
  set S_AXI_MEM_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MEM_1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_MEM_1
  set diff_clock_rtl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 diff_clock_rtl ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $diff_clock_rtl
  set pcie_7x_mgt_rtl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_7x_mgt_rtl ]

  # Create ports
  set ARESETN [ create_bd_port -dir O ARESETN ]
  set CLK_DATA [ create_bd_port -dir O -type clk CLK_DATA ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {M_AXIS:S_AXIS:S_AXI_MEM_0:M_AXI_CONTROL:S_AXI_MEM_1} \
 ] $CLK_DATA
  set c0_ddr4_act_n_0 [ create_bd_port -dir O c0_ddr4_act_n_0 ]
  set c0_ddr4_adr_0 [ create_bd_port -dir O -from 16 -to 0 c0_ddr4_adr_0 ]
  set c0_ddr4_ba_0 [ create_bd_port -dir O -from 1 -to 0 c0_ddr4_ba_0 ]
  set c0_ddr4_bg_0 [ create_bd_port -dir O -from 1 -to 0 c0_ddr4_bg_0 ]
  set c0_ddr4_ck_c_0 [ create_bd_port -dir O -from 0 -to 0 -type clk c0_ddr4_ck_c_0 ]
  set c0_ddr4_ck_t_0 [ create_bd_port -dir O -from 0 -to 0 -type clk c0_ddr4_ck_t_0 ]
  set c0_ddr4_cke_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_cke_0 ]
  set c0_ddr4_cs_n_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_cs_n_0 ]
  set c0_ddr4_dg_0 [ create_bd_port -dir IO -from 63 -to 0 c0_ddr4_dg_0 ]
  set c0_ddr4_dm_dbi_n_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dm_dbi_n_0 ]
  set c0_ddr4_dqs_c_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dqs_c_0 ]
  set c0_ddr4_dqs_t_0 [ create_bd_port -dir IO -from 7 -to 0 c0_ddr4_dqs_t_0 ]
  set c0_ddr4_odt_0 [ create_bd_port -dir O -from 0 -to 0 c0_ddr4_odt_0 ]
  set c0_ddr4_reset_n_0 [ create_bd_port -dir O c0_ddr4_reset_n_0 ]
  set c0_sys_clk_n_0 [ create_bd_port -dir I -type clk c0_sys_clk_n_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c0_sys_clk_n_0
  set c0_sys_clk_p_0 [ create_bd_port -dir I -type clk c0_sys_clk_p_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c0_sys_clk_p_0
  set c1_ddr4_act_n [ create_bd_port -dir O c1_ddr4_act_n ]
  set c1_ddr4_adr [ create_bd_port -dir O -from 16 -to 0 c1_ddr4_adr ]
  set c1_ddr4_ba [ create_bd_port -dir O -from 1 -to 0 c1_ddr4_ba ]
  set c1_ddr4_bg [ create_bd_port -dir O -from 1 -to 0 c1_ddr4_bg ]
  set c1_ddr4_ck_c [ create_bd_port -dir O -from 0 -to 0 -type clk c1_ddr4_ck_c ]
  set c1_ddr4_ck_t [ create_bd_port -dir O -from 0 -to 0 -type clk c1_ddr4_ck_t ]
  set c1_ddr4_cke [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_cke ]
  set c1_ddr4_cs_n [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_cs_n ]
  set c1_ddr4_dm_dbi_n [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dm_dbi_n ]
  set c1_ddr4_dq [ create_bd_port -dir IO -from 63 -to 0 c1_ddr4_dq ]
  set c1_ddr4_dqs_c [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dqs_c ]
  set c1_ddr4_dqs_t [ create_bd_port -dir IO -from 7 -to 0 c1_ddr4_dqs_t ]
  set c1_ddr4_odt [ create_bd_port -dir O -from 0 -to 0 c1_ddr4_odt ]
  set c1_ddr4_reset_n [ create_bd_port -dir O c1_ddr4_reset_n ]
  set c1_sys_clk_n [ create_bd_port -dir I -type clk c1_sys_clk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c1_sys_clk_n
  set c1_sys_clk_p [ create_bd_port -dir I -type clk c1_sys_clk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $c1_sys_clk_p
  set perst_n [ create_bd_port -dir I perst_n ]
  set refclk200 [ create_bd_port -dir I -type clk refclk200 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
 ] $refclk200
  set refclk_n [ create_bd_port -dir I refclk_n ]
  set refclk_p [ create_bd_port -dir I refclk_p ]
  set rxn [ create_bd_port -dir I rxn ]
  set rxp [ create_bd_port -dir I rxp ]
  set sfp_tx_disable [ create_bd_port -dir O -from 1 -to 0 sfp_tx_disable ]
  set txn [ create_bd_port -dir O txn ]
  set txp [ create_bd_port -dir O txp ]

  # Create instance: PCIe
  create_hier_cell_PCIe [current_bd_instance .] PCIe

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio axi_gpio_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
   CONFIG.XBAR_DATA_WIDTH {32} \
 ] $axi_interconnect_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen blk_mem_gen_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: gnd, and set properties
  set gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant gnd ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $gnd

  # Create instance: mb_system
  create_hier_cell_mb_system [current_bd_instance .] mb_system

  # Create instance: mem_interface
  create_hier_cell_mem_interface [current_bd_instance .] mem_interface

  # Create instance: network
  create_hier_cell_network [current_bd_instance .] network

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_MONITOR_SLOTS {5} \
   CONFIG.C_SLOT {4} \
   CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_4_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio vio_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_PROBE_IN {0} \
   CONFIG.C_PROBE_OUT0_WIDTH {32} \
 ] $vio_0

  # Create interface connections
  connect_bd_intf_net -intf_net PCIe_M_AXI [get_bd_intf_pins PCIe/M_AXI] [get_bd_intf_pins mem_interface/PCIE_AXI]
  connect_bd_intf_net -intf_net PCIe_pcie_mgt [get_bd_intf_ports pcie_7x_mgt_rtl] [get_bd_intf_pins PCIe/pcie_mgt]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins mb_system/MB_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins PCIe/M_AXI_LITE] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS] [get_bd_intf_pins network/S_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXIS_1] [get_bd_intf_ports S_AXIS] [get_bd_intf_pins system_ila_0/SLOT_3_AXIS]
  connect_bd_intf_net -intf_net S_AXI_MEM_1 [get_bd_intf_ports S_AXI_MEM_0] [get_bd_intf_pins mem_interface/MEM_AXI_0]
connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI_MEM_1] [get_bd_intf_ports S_AXI_MEM_0] [get_bd_intf_pins system_ila_0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net S_AXI_MEM_1_1 [get_bd_intf_ports S_AXI_MEM_1] [get_bd_intf_pins mem_interface/MEM_AXI_1]
connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXI_MEM_1_1] [get_bd_intf_ports S_AXI_MEM_1] [get_bd_intf_pins system_ila_0/SLOT_1_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_ports M_AXI_CONTROL] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_interconnect_0_M02_AXI] [get_bd_intf_ports M_AXI_CONTROL] [get_bd_intf_pins system_ila_0/SLOT_2_AXI]
  connect_bd_intf_net -intf_net diff_clock_rtl_1 [get_bd_intf_ports diff_clock_rtl] [get_bd_intf_pins PCIe/CLK_IN_D]
  connect_bd_intf_net -intf_net network_M_AXIS [get_bd_intf_ports M_AXIS] [get_bd_intf_pins network/M_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets network_M_AXIS] [get_bd_intf_ports M_AXIS] [get_bd_intf_pins system_ila_0/SLOT_4_AXIS]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports c0_ddr4_dg_0] [get_bd_pins mem_interface/c0_ddr4_dg]
  connect_bd_net -net Net1 [get_bd_ports c0_ddr4_dm_dbi_n_0] [get_bd_pins mem_interface/c0_ddr4_dm_dbi_n]
  connect_bd_net -net Net2 [get_bd_ports c0_ddr4_dqs_c_0] [get_bd_pins mem_interface/c0_ddr4_dqs_c]
  connect_bd_net -net Net3 [get_bd_ports c0_ddr4_dqs_t_0] [get_bd_pins mem_interface/c0_ddr4_dqs_t]
  connect_bd_net -net Net4 [get_bd_ports c1_ddr4_dqs_t] [get_bd_pins mem_interface/c1_ddr4_dqs_t]
  connect_bd_net -net Net5 [get_bd_ports c1_ddr4_dqs_c] [get_bd_pins mem_interface/c1_ddr4_dqs_c]
  connect_bd_net -net Net6 [get_bd_ports c1_ddr4_dm_dbi_n] [get_bd_pins mem_interface/c1_ddr4_dm_dbi_n]
  connect_bd_net -net Net7 [get_bd_ports c1_ddr4_dq] [get_bd_pins mem_interface/c1_ddr4_dq]
  connect_bd_net -net PCIe_axi_aclk [get_bd_pins PCIe/axi_aclk] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins mem_interface/PCIE_ACLK]
  connect_bd_net -net PCIe_axi_aresetn [get_bd_pins PCIe/axi_aresetn] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net c0_sys_clk_n_0_1 [get_bd_ports c0_sys_clk_n_0] [get_bd_pins mem_interface/c0_sys_clk_n]
  connect_bd_net -net c0_sys_clk_p_0_1 [get_bd_ports c0_sys_clk_p_0] [get_bd_pins mem_interface/c0_sys_clk_p]
  connect_bd_net -net c1_sys_clk_n_1 [get_bd_ports c1_sys_clk_n] [get_bd_pins mem_interface/c1_sys_clk_n]
  connect_bd_net -net c1_sys_clk_p_1 [get_bd_ports c1_sys_clk_p] [get_bd_pins mem_interface/c1_sys_clk_p]
  connect_bd_net -net gnd_dout [get_bd_ports sfp_tx_disable] [get_bd_pins gnd/dout]
  connect_bd_net -net mem_interface_ARESETN [get_bd_ports ARESETN] [get_bd_pins mem_interface/ARESETN]
  connect_bd_net -net mem_interface_c0_ddr4_act_n [get_bd_ports c0_ddr4_act_n_0] [get_bd_pins mem_interface/c0_ddr4_act_n]
  connect_bd_net -net mem_interface_c0_ddr4_adr [get_bd_ports c0_ddr4_adr_0] [get_bd_pins mem_interface/c0_ddr4_adr]
  connect_bd_net -net mem_interface_c0_ddr4_ba [get_bd_ports c0_ddr4_ba_0] [get_bd_pins mem_interface/c0_ddr4_ba]
  connect_bd_net -net mem_interface_c0_ddr4_bg [get_bd_ports c0_ddr4_bg_0] [get_bd_pins mem_interface/c0_ddr4_bg]
  connect_bd_net -net mem_interface_c0_ddr4_ck_c [get_bd_ports c0_ddr4_ck_c_0] [get_bd_pins mem_interface/c0_ddr4_ck_c]
  connect_bd_net -net mem_interface_c0_ddr4_ck_t [get_bd_ports c0_ddr4_ck_t_0] [get_bd_pins mem_interface/c0_ddr4_ck_t]
  connect_bd_net -net mem_interface_c0_ddr4_cke [get_bd_ports c0_ddr4_cke_0] [get_bd_pins mem_interface/c0_ddr4_cke]
  connect_bd_net -net mem_interface_c0_ddr4_cs_n [get_bd_ports c0_ddr4_cs_n_0] [get_bd_pins mem_interface/c0_ddr4_cs_n]
  connect_bd_net -net mem_interface_c0_ddr4_odt [get_bd_ports c0_ddr4_odt_0] [get_bd_pins mem_interface/c0_ddr4_odt]
  connect_bd_net -net mem_interface_c0_ddr4_reset_n [get_bd_ports c0_ddr4_reset_n_0] [get_bd_pins mem_interface/c0_ddr4_reset_n]
  connect_bd_net -net mem_interface_c1_ddr4_act_n [get_bd_ports c1_ddr4_act_n] [get_bd_pins mem_interface/c1_ddr4_act_n]
  connect_bd_net -net mem_interface_c1_ddr4_adr [get_bd_ports c1_ddr4_adr] [get_bd_pins mem_interface/c1_ddr4_adr]
  connect_bd_net -net mem_interface_c1_ddr4_ba [get_bd_ports c1_ddr4_ba] [get_bd_pins mem_interface/c1_ddr4_ba]
  connect_bd_net -net mem_interface_c1_ddr4_bg [get_bd_ports c1_ddr4_bg] [get_bd_pins mem_interface/c1_ddr4_bg]
  connect_bd_net -net mem_interface_c1_ddr4_ck_c [get_bd_ports c1_ddr4_ck_c] [get_bd_pins mem_interface/c1_ddr4_ck_c]
  connect_bd_net -net mem_interface_c1_ddr4_ck_t [get_bd_ports c1_ddr4_ck_t] [get_bd_pins mem_interface/c1_ddr4_ck_t]
  connect_bd_net -net mem_interface_c1_ddr4_cke [get_bd_ports c1_ddr4_cke] [get_bd_pins mem_interface/c1_ddr4_cke]
  connect_bd_net -net mem_interface_c1_ddr4_cs_n [get_bd_ports c1_ddr4_cs_n] [get_bd_pins mem_interface/c1_ddr4_cs_n]
  connect_bd_net -net mem_interface_c1_ddr4_odt [get_bd_ports c1_ddr4_odt] [get_bd_pins mem_interface/c1_ddr4_odt]
  connect_bd_net -net mem_interface_c1_ddr4_reset_n [get_bd_ports c1_ddr4_reset_n] [get_bd_pins mem_interface/c1_ddr4_reset_n]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins mb_system/clk100] [get_bd_pins network/clk_100]
  connect_bd_net -net network_clk_156 [get_bd_ports CLK_DATA] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins mem_interface/clk156_25] [get_bd_pins network/clk_156] [get_bd_pins system_ila_0/clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net network_network_reset_done [get_bd_pins network/network_reset_done] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net network_txn [get_bd_ports txn] [get_bd_pins network/txn]
  connect_bd_net -net network_txp [get_bd_ports txp] [get_bd_pins network/txp]
  connect_bd_net -net perst_n_1 [get_bd_ports perst_n] [get_bd_pins PCIe/sys_rst_n] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net refclk200_1 [get_bd_ports refclk200] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net refclk_n_1 [get_bd_ports refclk_n] [get_bd_pins network/refclk_n]
  connect_bd_net -net refclk_p_1 [get_bd_ports refclk_p] [get_bd_pins network/refclk_p]
  connect_bd_net -net rxn_1 [get_bd_ports rxn] [get_bd_pins network/rxn]
  connect_bd_net -net rxp_1 [get_bd_ports rxp] [get_bd_pins network/rxp]
  connect_bd_net -net sys_rst_1 [get_bd_pins mem_interface/sys_rst] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins network/reset] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins mb_system/ext_reset_in] [get_bd_pins mem_interface/S_ARESETN] [get_bd_pins network/aresetn] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins vio_0/probe_out0]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs M_AXI_CONTROL/Reg] SEG_M_AXI_CONTROL_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0xC0000000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x00090000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x40000000 [get_bd_addr_spaces PCIe/xdma_0/M_AXI] [get_bd_addr_segs mem_interface/ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs M_AXI_CONTROL/Reg] SEG_M_AXI_CONTROL_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0xC0000000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x00090000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs mb_system/microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00002000 -offset 0x00000000 [get_bd_addr_spaces mb_system/microblaze_0/Instruction] [get_bd_addr_segs mb_system/microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces mb_system/microblaze_0/Data] [get_bd_addr_segs mb_system/mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_MEM_0] [get_bd_addr_segs mem_interface/ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_MEM_1] [get_bd_addr_segs mem_interface/ddr4_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_1_C0_DDR4_ADDRESS_BLOCK


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


common::send_msg_id "BD_TCL-1000" "WARNING" "This Tcl script was generated from a block design that has not been validated. It is possible that design <$design_name> may result in errors during validation."

