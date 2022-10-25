set C_TypeInfoList {{ 
"dut" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"strm_in": [[], {"reference": "0"}] }, {"strm_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<32> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName dut
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm_in_V_V int 32 regular {fifo 0 volatile }  }
	{ strm_out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_in.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "strm_out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "strm_out.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_V_V_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "dout" }} , 
 	{ "name": "strm_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "empty_n" }} , 
 	{ "name": "strm_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_V", "role": "read" }} , 
 	{ "name": "strm_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "din" }} , 
 	{ "name": "strm_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "full_n" }} , 
 	{ "name": "strm_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "dut", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "strm_in_V_V", "Type" : "Fifo", "Direction" : "I", "BlockSignal" : [
			{"Name" : "strm_in_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "strm_out_V_V", "Type" : "Fifo", "Direction" : "O", "BlockSignal" : [
			{"Name" : "strm_out_V_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "w_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "w_conv1"}]}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "w_conv2"}]}, 
		{"Name" : "threshold1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "threshold1_V"}]}, 
		{"Name" : "threshold2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "threshold2_V"}]}, 
		{"Name" : "w_fc1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "w_fc1"}]}, 
		{"Name" : "b_fc1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "b_fc1"}]}, 
		{"Name" : "w_fc2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "w_fc2"}]}, 
		{"Name" : "b_fc2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_bnn_xcel_fu_136", "Port" : "b_fc2"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_bnn_xcel_fu_136"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "16", "19", "20", "21", "22", "23", "24", "25"], "CDFG" : "dut_bnn_xcel", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_pad_fu_264", "Port" : "input_r"}]}, 
		{"Name" : "w_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_conv_fu_227", "Port" : "w_conv1"}]}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_conv_fu_227", "Port" : "w_conv2"}]}, 
		{"Name" : "threshold1_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_conv_fu_227", "Port" : "threshold_V"}]}, 
		{"Name" : "threshold2_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_conv_fu_227", "Port" : "threshold_V"}]}, 
		{"Name" : "w_fc1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_fc1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_fc2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_fu_217", "Port" : "w_fc2"}]}, 
		{"Name" : "b_fc2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_dut_dense_fu_217", "Port" : "b_fc2"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st48_fsm_47", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_dense_fu_217"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_conv_fu_227"},
		{"State" : "ap_ST_st10_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_conv_fu_227"},
		{"State" : "ap_ST_st6_fsm_5", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_max_pool_fu_252"},
		{"State" : "ap_ST_st12_fsm_11", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_max_pool_fu_252"},
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_pad_fu_264"},
		{"State" : "ap_ST_st8_fsm_7", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_pad_fu_264"},
		{"State" : "ap_ST_st14_fsm_13", "FSM" : "ap_CS_fsm", "SubInst" : "grp_dut_reshape_fu_278"}],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.threshold1_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.threshold2_V_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.w_fc1_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.b_fc1_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.mem_conv1_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.mem_conv2_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217", "Parent" : "2", "Child" : ["10", "11", "12", "13", "14", "15"], "CDFG" : "dut_dense", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_fc2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "b_fc2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217.w_fc2_U", "Parent" : "9", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217.b_fc2_U", "Parent" : "9", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217.dut_fadd_32ns_32ns_32_5_full_dsp_U20", "Parent" : "9", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217.dut_fmul_32ns_32ns_32_4_max_dsp_U21", "Parent" : "9", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217.dut_sitofp_32ns_32_6_U22", "Parent" : "9", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_dense_fu_217.dut_fcmp_32ns_32ns_1_1_U23", "Parent" : "9", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_conv_fu_227", "Parent" : "2", "Child" : ["17", "18"], "CDFG" : "dut_conv", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "threshold_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "N", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "I", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "L", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "w_conv2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_conv_fu_227.w_conv1_U", "Parent" : "16", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_conv_fu_227.w_conv2_U", "Parent" : "16", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_max_pool_fu_252", "Parent" : "2", "Child" : [], "CDFG" : "dut_max_pool", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "I", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_pad_fu_264", "Parent" : "2", "Child" : [], "CDFG" : "dut_pad", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "I", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.grp_dut_reshape_fu_278", "Parent" : "2", "Child" : [], "CDFG" : "dut_reshape", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_r", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_r", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.dut_fadd_32ns_32ns_32_5_full_dsp_U28", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.dut_fmul_32ns_32ns_32_4_max_dsp_U29", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.dut_sitofp_32ns_32_6_U30", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_bnn_xcel_fu_136.dut_fcmp_32ns_32ns_1_1_U31", "Parent" : "2", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1876598", "Max" : "13488274"}
	, {"Name" : "Interval", "Min" : "1876599", "Max" : "13488275"}
]}

set Spec2ImplPortList { 
	strm_in_V_V { ap_fifo {  { strm_in_V_V_dout fifo_data 0 32 }  { strm_in_V_V_empty_n fifo_status 0 1 }  { strm_in_V_V_read fifo_update 1 1 } } }
	strm_out_V_V { ap_fifo {  { strm_out_V_V_din fifo_data 1 32 }  { strm_out_V_V_full_n fifo_status 0 1 }  { strm_out_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in_V_V { fifo_read 8 no_conditional }
	strm_out_V_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}