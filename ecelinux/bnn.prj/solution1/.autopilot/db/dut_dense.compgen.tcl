# This script segment is generated automatically by AutoPilot

set id 20
set name dut_fadd_32ns_32ns_32_5_full_dsp
set corename simcore_fadd
set op fadd
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 21
set name dut_fmul_32ns_32ns_32_4_max_dsp
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 22
set name dut_sitofp_32ns_32_6
set corename simcore_sitofp
set op sitofp
set stage_num 6
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sitofp] == "ap_gen_simcore_sitofp"} {
eval "ap_gen_simcore_sitofp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sitofp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sitofp
set corename Int2Float
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 23
set name dut_fcmp_32ns_32ns_1_1
set corename simcore_fcmp
set op fcmp
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fcmp] == "ap_gen_simcore_fcmp"} {
eval "ap_gen_simcore_fcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fcmp
set corename FCmp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 24
set MemName dut_dense_w_fc2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 1
set AddrRange 2560
set AddrWd 12
set TrueReset 0
set IsROM 1
set ROMData { "0" "0" "1" "1" "0" "1" "1" "0" "1" "0" "1" "0" "0" "0" "0" "0" "1" "1" "0" "0" "0" "1" "0" "0" "0" "0" "0" "0" "1" "1" "0" "0" "0" "1" "0" "1" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "0" "0" "0" "1" "0" "1" "1" "1" "0" "0" "0" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "1" "0" "1" "1" "1" "1" "0" "1" "1" "0" "0" "0" "0" "0" "0" "0" "1" "0" "1" "0" "1" "1" "0" "1" "1" "1" "0" "0" "1" "0" "1" "0" "0" "1" "1" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "0" "0" "0" "0" "1" "1" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "0" "1" "0" "0" "1" "0" "1" "0" "1" "1" "1" "0" "1" "0" "0" "0" "1" "0" "0" "1" "0" "0" "1" "1" "0" "1" "0" "0" "0" "0" "0" "1" "0" "1" "1" "1" "1" "0" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "1" "0" "1" "1" "1" "1" "1" "0" "1" "0" "1" "0" "1" "0" "1" "0" "1" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "0" "1" "0" "1" "0" "1" "1" "0" "1" "0" "0" "0" "0" "0" "0" "0" "1" "0" "1" "0" "0" "0" "1" "0" "1" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "1" "1" "1" "1" "0" "0" "1" "1" "0" "1" "0" "0" "1" "1" "1" "1" "1" "0" "1" "1" "1" "1" "1" "1" "0" "0" "1" "1" "1" "1" "1" "0" "0" "1" "1" "0" "0" "0" "0" "1" "0" "1" "0" "1" "0" "1" "1" "1" "1" "1" "1" "1" "0" "0" "0" "1" "1" "1" "0" "1" "1" "1" "0" "1" "0" "0" "1" "1" "1" "1" "0" "0" "1" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "1" "0" "1" "0" "0" "0" "0" "1" "0" "1" "0" "0" "0" "0" "1" "0" "1" "0" "0" "1" "1" "1" "0" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "1" "0" "0" "1" "0" "1" "0" "1" "0" "1" "1" "0" "1" "0" "1" "1" "0" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "1" "1" "1" "1" "0" "0" "0" "0" "0" "0" "0" "0" "1" "1" "1" "1" "0" "0" "1" "1" "0" "1" "0" "1" "0" "1" "0" "1" "0" "0" "0" "1" "0" "1" "0" "0" "1" "1" "1" "0" "1" "0" "0" "0" "0" "0" "1" "0" "0" "1" "0" "0" "1" "0" "1" "0" "1" "0" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "0" "1" "1" "0" "1" "1" "0" "0" "0" "1" "1" "1" "0" "1" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "0" "0" "1" "0" "0" "0" "0" "0" "1" "0" "1" "1" "0" "0" "1" "0" "1" "1" "1" "1" "0" "0" "1" "1" "0" "1" "0" "1" "0" "1" "1" "0" "0" "1" "1" "1" "1" "0" "1" "0" "0" "1" "0" "0" "0" "0" "0" "1" "0" "1" "1" "1" "0" "1" "0" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "1" "1" "0" "0" "1" "1" "1" "1" "1" "0" "0" "0" "0" "1" "0" "1" "1" "1" "0" "0" "0" "1" "1" "0" "1" "1" "0" "1" "1" "0" "0" "1" "1" "1" "1" "1" "0" "0" "0" "1" "0" "0" "0" "0" "1" "1" "1" "0" "1" "0" "0" "0" "0" "1" "1" "1" "1" "1" "1" "0" "1" "1" "0" "0" "0" "0" "1" "0" "0" "1" "0" "1" "1" "0" "1" "0" "1" "1" "1" "1" "0" "0" "0" "0" "0" "1" "0" "1" "0" "0" "1" "1" "0" "0" "1" "1" "0" "1" "1" "0" "1" "1" "1" "1" "0" "1" "0" "1" "0" "1" "1" "0" "1" "1" "0" "0" "0" "0" "0" "1" "0" "1" "0" "0" "1" "1" "1" "1" "0" "1" "0" "1" "1" "0" "0" "0" "1" "0" "0" "1" "0" "1" "0" "0" "0" "0" "1" "1" "1" "0" "1" "0" "0" "0" "0" "0" "1" "1" "1" "0" "0" "1" "1" "1" "0" "0" "0" "1" "1" "0" "0" "0" "1" "0" "0" "0" "1" "1" "0" "1" "0" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "1" "1" "1" "1" "0" "1" "0" "0" "1" "0" "1" "0" "1" "0" "0" "0" "0" "1" "1" "1" "1" "1" "0" "0" "0" "0" "0" "1" "0" "1" "0" "0" "1" "0" "0" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "1" "1" "1" "0" "0" "1" "0" "1" "1" "0" "1" "1" "0" "1" "1" "0" "0" "0" "1" "0" "1" "1" "0" "1" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "1" "0" "1" "1" "1" "0" "0" "0" "1" "1" "1" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "1" "1" "1" "0" "0" "0" "0" "1" "0" "0" "1" "0" "0" "0" "0" "0" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "0" "1" "0" "1" "1" "1" "1" "0" "0" "1" "0" "1" "1" "0" "1" "1" "1" "0" "0" "0" "1" "0" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "1" "0" "1" "0" "1" "1" "1" "1" "1" "1" "0" "0" "1" "0" "1" "1" "1" "0" "1" "1" "0" "0" "1" "0" "1" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "0" "1" "1" "0" "1" "0" "0" "0" "0" "1" "1" "0" "1" "1" "0" "1" "0" "0" "1" "1" "0" "1" "1" "0" "1" "0" "1" "1" "1" "1" "0" "1" "0" "0" "1" "0" "1" "0" "0" "1" "0" "1" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "1" "0" "1" "1" "0" "0" "1" "0" "0" "1" "0" "0" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "0" "1" "0" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "1" "1" "0" "1" "1" "0" "1" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "1" "0" "1" "0" "0" "1" "0" "1" "0" "1" "0" "1" "1" "0" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "0" "1" "1" "1" "1" "0" "0" "1" "1" "0" "1" "1" "1" "0" "0" "1" "0" "0" "0" "0" "1" "0" "1" "0" "0" "0" "1" "0" "1" "1" "1" "0" "1" "0" "0" "0" "1" "0" "1" "0" "1" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "0" "0" "0" "1" "0" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "1" "1" "1" "1" "0" "0" "1" "1" "1" "0" "1" "0" "1" "0" "0" "0" "0" "1" "0" "0" "0" "1" "0" "0" "0" "0" "1" "0" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "0" "0" "0" "1" "1" "0" "0" "1" "1" "0" "0" "0" "1" "0" "0" "0" "0" "1" "0" "1" "0" "1" "0" "0" "0" "1" "1" "0" "1" "1" "0" "1" "0" "1" "0" "0" "0" "1" "1" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "1" "1" "0" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "0" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "1" "1" "1" "1" "1" "1" "0" "1" "0" "1" "1" "1" "1" "0" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "0" "1" "0" "1" "0" "1" "0" "0" "1" "1" "0" "1" "0" "0" "1" "0" "0" "0" "0" "1" "1" "1" "1" "0" "1" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "1" "1" "1" "0" "0" "1" "1" "1" "0" "0" "0" "1" "1" "1" "0" "1" "0" "0" "0" "1" "0" "0" "1" "0" "0" "0" "1" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "1" "1" "1" "1" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "0" "1" "1" "1" "0" "0" "0" "1" "1" "1" "1" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "0" "1" "0" "1" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "1" "1" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "1" "0" "0" "0" "0" "0" "0" "0" "0" "1" "0" "0" "1" "1" "0" "1" "0" "0" "1" "1" "1" "1" "0" "1" "0" "1" "1" "1" "0" "0" "0" "1" "0" "1" "1" "0" "1" "0" "0" "1" "1" "0" "1" "0" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "0" "1" "1" "1" "1" "0" "1" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "1" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "1" "0" "0" "0" "1" "1" "1" "1" "1" "0" "1" "0" "1" "1" "0" "1" "0" "0" "1" "1" "1" "1" "1" "1" "1" "1" "1" "1" "0" "0" "0" "1" "0" "0" "1" "0" "1" "1" "0" "1" "0" "0" "1" "0" "1" "1" "1" "1" "1" "0" "0" "0" "0" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "1" "0" "0" "0" "0" "0" "1" "1" "0" "1" "1" "0" "1" "0" "0" "0" "1" "1" "1" "1" "1" "0" "1" "1" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "1" "0" "0" "1" "0" "1" "1" "1" "1" "1" "0" "0" "1" "0" "0" "0" "1" "1" "0" "0" "1" "1" "1" "0" "1" "0" "1" "0" "0" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "0" "1" "0" "1" "0" "0" "0" "1" "0" "0" "0" "1" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "0" "0" "0" "0" "0" "0" "1" "1" "0" "1" "1" "0" "0" "0" "0" "1" "0" "1" "1" "0" "0" "1" "0" "1" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "0" "0" "0" "0" "0" "1" "1" "1" "0" "1" "0" "0" "1" "1" "0" "1" "0" "0" "0" "0" "1" "1" "1" "1" "0" "0" "0" "1" "0" "0" "1" "1" "1" "1" "0" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "0" "0" "0" "1" "0" "0" "0" "1" "0" "1" "1" "1" "1" "1" "0" "0" "0" "0" "0" "0" "1" "0" "1" "1" "1" "0" "0" "1" "0" "1" "0" "1" "1" "0" "1" "0" "0" "0" "1" "0" "1" "1" "1" "1" "1" "1" "0" "0" "0" "1" "1" "1" "0" "0" "0" "1" "0" "1" "0" "1" "1" "1" "1" "0" "1" "0" "1" "1" "1" "1" "0" "1" "1" "1" "1" "0" "0" "0" "1" "1" "0" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "1" "1" "1" "0" "1" "0" "0" "0" "0" "1" "0" "0" "0" "1" "1" "1" "1" "0" "0" "0" "1" "1" "1" "0" "0" "0" "1" "1" "0" "0" "1" "0" "1" "0" "1" "1" "1" "1" "0" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "1" "1" "1" "1" "1" "1" "1" "0" "1" "1" "1" "1" "1" "1" "1" "0" "1" "1" "0" "0" "1" "1" "1" "1" "1" "0" "0" "1" "1" "1" "0" "1" "1" "0" "1" "0" "0" "1" "1" "1" "1" "0" "1" "1" "0" "1" "1" "0" "0" "0" "0" "1" "0" "1" "0" "1" "1" "0" "1" "0" "1" "0" "1" "0" "0" "0" "0" "0" "0" "1" "1" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "0" "1" "0" "1" "0" "1" "0" "1" "1" "0" "0" "0" "1" "1" "0" "1" "0" "1" "0" "1" "1" "0" "0" "1" "0" "1" "0" "1" "0" "1" "0" "1" "1" "1" "0" "0" "0" "0" "1" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "0" "0" "0" "0" "1" "1" "0" "1" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "1" "1" "0" "1" "0" "0" "0" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "1" "1" "0" "1" "0" "0" "1" "1" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "1" "1" "0" "1" "0" "0" "1" "1" "1" "1" "1" "1" "1" "1" "0" "1" "0" "1" "0" "0" "1" "0" "1" "1" "0" "1" "1" "0" "0" "0" "0" "0" "1" "0" "0" "1" "0" "1" "1" "1" "0" "0" "0" "0" "0" "0" "1" "1" "0" "0" "1" "1" "1" "0" "1" "0" "1" "0" "0" "0" "1" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "1" "0" "0" "0" "1" "0" "1" "0" "1" "1" "1" "1" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "1" "1" "1" "1" "1" "0" "1" "1" "1" "0" "1" "1" "0" "1" "1" "1" "1" "0" "1" "1" "1" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "1" "1" "0" "0" "1" "1" "1" "0" "1" "1" "0" "0" "1" "1" "0" "1" "0" "1" "1" "1" "1" "0" "1" "1" "0" "1" "1" "1" "1" "1" "1" "0" "1" "1" "1" "0" "1" "0" "1" "1" "0" "0" "0" "0" "0" "0" "1" "0" "0" "0" "0" "1" "0" "1" "0" "1" "0" "1" "0" "1" "1" "1" "0" "0" "1" "1" "0" "1" "1" "1" "0" "0" "0" "1" "1" "1" "1" "0" "1" "0" "1" "0" "1" "1" "0" "0" "1" "0" "0" "0" "1" "1" "0" "1" "0" "1" "1" "0" "1" "0" "1" "0" "0" "1" "1" "0" "0" "0" "0" "1" "1" "0" "0" "1" "0" "1" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "0" "1" "0" "1" "0" "0" "0" "1" "1" "1" "0" "0" "1" "1" "0" "0" "1" "1" "0" "1" "1" "0" "0" "0" "1" "0" "1" "1" "0" "1" "0" "0" "1" "0" "0" "0" "0" "0" "1" "0" "1" "1" "0" "0" "1" "1" "0" "1" "0" "1" "1" "0" "1" "0" "0" "0" "1" "1" "0" "0" "0" "1" "1" "0" "1" "1" "1" "0" "0" "1" "0" "1" "0" "0" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "1" "0" "1" "0" "0" "0" "0" "0" "1" "0" "1" "0" "0" "1" "1" "1" "0" "1" "1" "1" "0" "0" "1" "1" "1" "1" "1" "0" "1" "1" "1" "1" "0" "1" "0" "1" "1" "1" "1" "1" "0" "0" "1" "0" "1" "0" "0" "0" "1" "0" "1" "1" "0" "0" "0" "0" "1" "1" "0" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 25
set MemName dut_dense_b_fc2
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 10
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "10111010110110101111110011111011" "00111100101000011101100100110100" "00111011101101101101011101110010" "00111010111110011101100100101001" "10111100001001111001100100110100" "00111010100100100001101000001000" "10111011100001100011011101111010" "10111011100100000000001000010001" "00111011011100001101010110111100" "10111011100000010111010011000111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 13 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 13 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


