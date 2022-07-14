
set TopModule "memcachedPipeline"
set ClockPeriod "6.660000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 1
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle "all"
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
set TargetInfo "xcku040:-ffva1156:-2-e"
set SourceFiles {sc {} c {../../src/memcachedPipeline.cpp ../../src/splitter.cpp ../../src/merger.cpp ../../src/globals.cpp ../../src/valueStore/flashValueStore.cpp ../../src/valueStore/valueStore.cpp ../../src/responseFormatter/binResponse.cpp ../../src/requestParser/requestParser.cpp ../../src/hashTable/memWrite.cpp ../../src/hashTable/memRead.cpp ../../src/hashTable/hashTable.cpp ../../src/hashTable/hash.cpp ../../src/hashTable/compare.cpp ../../src/hashTable/cc.cpp}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile {/home/sameh/Dropbox/UofT/Research/Work/Designs/debugging/memcached/hls/memcachedPipeline_prj/solution1/solution1.directive}
set TBFiles {verilog ../../src/memcachedPipeline_tb.cpp bc ../../src/memcachedPipeline_tb.cpp vhdl ../../src/memcachedPipeline_tb.cpp sc ../../src/memcachedPipeline_tb.cpp cas ../../src/memcachedPipeline_tb.cpp c {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/kintexu/kintexu xilinx/kintexu/kintexu_fpv7}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."
