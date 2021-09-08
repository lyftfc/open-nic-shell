##################################################################
# CREATE IP ila_axis_cmac
##################################################################

set ila_axis ila_axis_cmac
create_ip -name ila -vendor xilinx.com -library ip -module_name $ila_axis -dir ${ip_build_dir}

set_property -dict { 
  CONFIG.C_DATA_DEPTH {1024}
  CONFIG.C_NUM_OF_PROBES {9}
  CONFIG.C_INPUT_PIPE_STAGES {5}
  CONFIG.C_ADV_TRIGGER {false}
  CONFIG.C_PROBE8_MU_CNT {1}
  CONFIG.C_PROBE7_MU_CNT {1}
  CONFIG.C_PROBE6_MU_CNT {1}
  CONFIG.C_PROBE5_MU_CNT {1}
  CONFIG.C_PROBE4_MU_CNT {1}
  CONFIG.C_PROBE3_MU_CNT {1}
  CONFIG.C_PROBE2_MU_CNT {1}
  CONFIG.C_PROBE1_MU_CNT {1}
  CONFIG.C_PROBE0_MU_CNT {1}
  CONFIG.ALL_PROBE_SAME_MU_CNT {1}
  CONFIG.C_SLOT_0_AXI_PROTOCOL {AXI4S}
  CONFIG.C_SLOT_0_AXIS_TDATA_WIDTH {512}
  CONFIG.C_SLOT_0_AXIS_TID_WIDTH {0}
  CONFIG.C_SLOT_0_AXIS_TUSER_WIDTH {1}
  CONFIG.C_SLOT_0_AXIS_TDEST_WIDTH {0}
  CONFIG.C_ENABLE_ILA_AXI_MON {true}
  CONFIG.C_MONITOR_TYPE {AXI}
} [get_ips $ila_axis]
