
set TopModule "lenetSynthMatlab"
set ClockPeriod "10.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7a100t:csg324:-1"
set SourceFiles {sc {} c {../../../generatedCCode/sum.c ../../../generatedCCode/lenetSynthMatlab_terminate.c ../../../generatedCCode/lenetSynthMatlab_initialize.c ../../../generatedCCode/lenetSynthMatlab_data.c ../../../generatedCCode/lenetSynthMatlab.c}}
set SourceFlags {sc {} c {{} {} {} {} {}}}
set DirectiveFile {/home/tyrian/nnproject/hlsProject/hlsProject/solution1/solution1.directive}
set TBFiles {verilog {../../../codegen/lib/lenetSynthMatlab/examples/main.h ../../../codegen/lib/lenetSynthMatlab/examples/main.c} bc {../../../codegen/lib/lenetSynthMatlab/examples/main.h ../../../codegen/lib/lenetSynthMatlab/examples/main.c} sc {../../../codegen/lib/lenetSynthMatlab/examples/main.h ../../../codegen/lib/lenetSynthMatlab/examples/main.c} vhdl {../../../codegen/lib/lenetSynthMatlab/examples/main.h ../../../codegen/lib/lenetSynthMatlab/examples/main.c} c {} cas {../../../codegen/lib/lenetSynthMatlab/examples/main.h ../../../codegen/lib/lenetSynthMatlab/examples/main.c}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/artix7/artix7 xilinx/artix7/artix7_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."
set HPFPO "0"
