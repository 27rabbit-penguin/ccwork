# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7k160tffg676-2L
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.cache/wt [current_project]
  set_property parent.project_path C:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.xpr [current_project]
  set_property ip_repo_paths C:/Users/ASUS/Desktop/OExp00-muxctrl/MUX [current_project]
  set_property ip_output_repo C:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.runs/synth_1/OExp01_muxctrl_wrapper.dcp
  set_msg_config -source 4 -id {BD 41-1661} -limit 0
  set_param project.isImplRun true
  add_files C:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/OExp01_muxctrl.bd
  set_param project.isImplRun false
  read_edif c:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX2T1_5_0_0/MUX2T1_5.edf
  read_edif c:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX2T1_5_1_0/MUX2T1_5.edf
  read_edif c:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX4T1_5_1_0/MUX4T1_5.edf
  read_edif c:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX8T1_8_0_0/MUX8T1_8.edf
  read_xdc C:/Users/ASUS/Desktop/OExp00-muxctrl/OExp00-muxctrl.srcs/constrs_1/new/muxctrl.xdc
  set_param project.isImplRun true
  link_design -top OExp01_muxctrl_wrapper -part xc7k160tffg676-2L
  set_param project.isImplRun false
  write_hwdef -force -file OExp01_muxctrl_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force OExp01_muxctrl_wrapper_opt.dcp
  create_report "impl_1_opt_report_drc_0" "report_drc -file OExp01_muxctrl_wrapper_drc_opted.rpt -pb OExp01_muxctrl_wrapper_drc_opted.pb -rpx OExp01_muxctrl_wrapper_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force OExp01_muxctrl_wrapper_placed.dcp
  create_report "impl_1_place_report_io_0" "report_io -file OExp01_muxctrl_wrapper_io_placed.rpt"
  create_report "impl_1_place_report_utilization_0" "report_utilization -file OExp01_muxctrl_wrapper_utilization_placed.rpt -pb OExp01_muxctrl_wrapper_utilization_placed.pb"
  create_report "impl_1_place_report_control_sets_0" "report_control_sets -verbose -file OExp01_muxctrl_wrapper_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force OExp01_muxctrl_wrapper_routed.dcp
  create_report "impl_1_route_report_drc_0" "report_drc -file OExp01_muxctrl_wrapper_drc_routed.rpt -pb OExp01_muxctrl_wrapper_drc_routed.pb -rpx OExp01_muxctrl_wrapper_drc_routed.rpx"
  create_report "impl_1_route_report_methodology_0" "report_methodology -file OExp01_muxctrl_wrapper_methodology_drc_routed.rpt -pb OExp01_muxctrl_wrapper_methodology_drc_routed.pb -rpx OExp01_muxctrl_wrapper_methodology_drc_routed.rpx"
  create_report "impl_1_route_report_power_0" "report_power -file OExp01_muxctrl_wrapper_power_routed.rpt -pb OExp01_muxctrl_wrapper_power_summary_routed.pb -rpx OExp01_muxctrl_wrapper_power_routed.rpx"
  create_report "impl_1_route_report_route_status_0" "report_route_status -file OExp01_muxctrl_wrapper_route_status.rpt -pb OExp01_muxctrl_wrapper_route_status.pb"
  create_report "impl_1_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file OExp01_muxctrl_wrapper_timing_summary_routed.rpt -rpx OExp01_muxctrl_wrapper_timing_summary_routed.rpx -warn_on_violation "
  create_report "impl_1_route_report_incremental_reuse_0" "report_incremental_reuse -file OExp01_muxctrl_wrapper_incremental_reuse_routed.rpt"
  create_report "impl_1_route_report_clock_utilization_0" "report_clock_utilization -file OExp01_muxctrl_wrapper_clock_utilization_routed.rpt"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force OExp01_muxctrl_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force OExp01_muxctrl_wrapper.mmi }
  write_bitstream -force OExp01_muxctrl_wrapper.bit 
  catch { write_sysdef -hwdef OExp01_muxctrl_wrapper.hwdef -bitfile OExp01_muxctrl_wrapper.bit -meminfo OExp01_muxctrl_wrapper.mmi -file OExp01_muxctrl_wrapper.sysdef }
  catch {write_debug_probes -quiet -force OExp01_muxctrl_wrapper}
  catch {file copy -force OExp01_muxctrl_wrapper.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

