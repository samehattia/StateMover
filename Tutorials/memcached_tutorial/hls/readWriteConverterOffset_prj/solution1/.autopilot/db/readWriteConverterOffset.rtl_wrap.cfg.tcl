set lang "C++"
set moduleName "readWriteConverterOffset"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "memWrCmd"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "2"
set Reference0 "1"
set Dims0 [list 0]
set Interface0 [list AP_STREAM 0] 
set structMem0 ""
set PortName00 "address"
set BitWidth00 "32"
set ArrayOpt00 ""
set Const00 "0"
set Volatile00 "0"
set Pointer00 "0"
set Reference00 "0"
set Dims00 [list 0]
set Interface00 "wire"
set DataType00 "[list ap_uint 32 ]"
set Port00 [list $PortName00 $Interface00 $DataType00 $Pointer00 $Dims00 $Const00 $Volatile00 $ArrayOpt00]
lappend structMem0 $Port00
set PortName01 "count"
set BitWidth01 "8"
set ArrayOpt01 ""
set Const01 "0"
set Volatile01 "0"
set Pointer01 "0"
set Reference01 "0"
set Dims01 [list 0]
set Interface01 "wire"
set DataType01 "[list ap_uint 8 ]"
set Port01 [list $PortName01 $Interface01 $DataType01 $Pointer01 $Dims01 $Const01 $Volatile01 $ArrayOpt01]
lappend structMem0 $Port01
set structParameter0 [list ]
set structArgument0 [list ]
set NameSpace0 [list ]
set structIsPacked0 "0"
set DataType0 [list "memCtrlWord" "struct memCtrlWord" $structMem0 1 0 $structParameter0 $structArgument0 $NameSpace0 $structIsPacked0]
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "memWrData"
set BitWidth1 "512"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "2"
set Reference1 "1"
set Dims1 [list 0]
set Interface1 [list AP_STREAM 0] 
set DataType1 "[list ap_uint 512 ]"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "dmWrCmd"
set BitWidth2 "128"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "2"
set Reference2 "1"
set Dims2 [list 0]
set Interface2 [list AP_STREAM 0] 
set structMem2 ""
set PortName20 "btt"
set BitWidth20 "32"
set ArrayOpt20 ""
set Const20 "0"
set Volatile20 "0"
set Pointer20 "0"
set Reference20 "0"
set Dims20 [list 0]
set Interface20 "wire"
set DataType20 "[list ap_uint 23 ]"
set Port20 [list $PortName20 $Interface20 $DataType20 $Pointer20 $Dims20 $Const20 $Volatile20 $ArrayOpt20]
lappend structMem2 $Port20
set PortName21 "type"
set BitWidth21 "8"
set ArrayOpt21 ""
set Const21 "0"
set Volatile21 "0"
set Pointer21 "0"
set Reference21 "0"
set Dims21 [list 0]
set Interface21 "wire"
set DataType21 "[list ap_uint 1 ]"
set Port21 [list $PortName21 $Interface21 $DataType21 $Pointer21 $Dims21 $Const21 $Volatile21 $ArrayOpt21]
lappend structMem2 $Port21
set PortName22 "dsa"
set BitWidth22 "8"
set ArrayOpt22 ""
set Const22 "0"
set Volatile22 "0"
set Pointer22 "0"
set Reference22 "0"
set Dims22 [list 0]
set Interface22 "wire"
set DataType22 "[list ap_uint 6 ]"
set Port22 [list $PortName22 $Interface22 $DataType22 $Pointer22 $Dims22 $Const22 $Volatile22 $ArrayOpt22]
lappend structMem2 $Port22
set PortName23 "eof"
set BitWidth23 "8"
set ArrayOpt23 ""
set Const23 "0"
set Volatile23 "0"
set Pointer23 "0"
set Reference23 "0"
set Dims23 [list 0]
set Interface23 "wire"
set DataType23 "[list ap_uint 1 ]"
set Port23 [list $PortName23 $Interface23 $DataType23 $Pointer23 $Dims23 $Const23 $Volatile23 $ArrayOpt23]
lappend structMem2 $Port23
set PortName24 "drr"
set BitWidth24 "8"
set ArrayOpt24 ""
set Const24 "0"
set Volatile24 "0"
set Pointer24 "0"
set Reference24 "0"
set Dims24 [list 0]
set Interface24 "wire"
set DataType24 "[list ap_uint 1 ]"
set Port24 [list $PortName24 $Interface24 $DataType24 $Pointer24 $Dims24 $Const24 $Volatile24 $ArrayOpt24]
lappend structMem2 $Port24
set PortName25 "startAddress"
set BitWidth25 "32"
set ArrayOpt25 ""
set Const25 "0"
set Volatile25 "0"
set Pointer25 "0"
set Reference25 "0"
set Dims25 [list 0]
set Interface25 "wire"
set DataType25 "[list ap_uint 32 ]"
set Port25 [list $PortName25 $Interface25 $DataType25 $Pointer25 $Dims25 $Const25 $Volatile25 $ArrayOpt25]
lappend structMem2 $Port25
set PortName26 "tag"
set BitWidth26 "8"
set ArrayOpt26 ""
set Const26 "0"
set Volatile26 "0"
set Pointer26 "0"
set Reference26 "0"
set Dims26 [list 0]
set Interface26 "wire"
set DataType26 "[list ap_uint 4 ]"
set Port26 [list $PortName26 $Interface26 $DataType26 $Pointer26 $Dims26 $Const26 $Volatile26 $ArrayOpt26]
lappend structMem2 $Port26
set PortName27 "rsvd"
set BitWidth27 "8"
set ArrayOpt27 ""
set Const27 "0"
set Volatile27 "0"
set Pointer27 "0"
set Reference27 "0"
set Dims27 [list 0]
set Interface27 "wire"
set DataType27 "[list ap_uint 4 ]"
set Port27 [list $PortName27 $Interface27 $DataType27 $Pointer27 $Dims27 $Const27 $Volatile27 $ArrayOpt27]
lappend structMem2 $Port27
set structParameter2 [list ]
set structArgument2 [list ]
set NameSpace2 [list ]
set structIsPacked2 "0"
set DataType2 [list "datamoverCtrlWord" "struct datamoverCtrlWord" $structMem2 1 0 $structParameter2 $structArgument2 $NameSpace2 $structIsPacked2]
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "dmWrData"
set BitWidth3 "1024"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "2"
set Reference3 "1"
set Dims3 [list 0]
set Interface3 [list AP_STREAM 0] 
set structMem3 ""
set PortName30 "data"
set BitWidth30 "512"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list 0]
set Interface30 "wire"
set DataType30 "[list ap_uint 512 ]"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "keep"
set BitWidth31 "64"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set DataType31 "[list ap_uint 64 ]"
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set PortName32 "last"
set BitWidth32 "8"
set ArrayOpt32 ""
set Const32 "0"
set Volatile32 "0"
set Pointer32 "0"
set Reference32 "0"
set Dims32 [list 0]
set Interface32 "wire"
set DataType32 "[list ap_uint 1 ]"
set Port32 [list $PortName32 $Interface32 $DataType32 $Pointer32 $Dims32 $Const32 $Volatile32 $ArrayOpt32]
lappend structMem3 $Port32
set structParameter3 [list ]
set structArgument3 [list ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "axiWord" "struct axiWord" $structMem3 1 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "dmWrStatus"
set BitWidth4 "8"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "2"
set Reference4 "1"
set Dims4 [list 0]
set Interface4 [list AP_STREAM 0] 
set DataType4 "[list ap_uint 8 ]"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "memRdCmd"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "2"
set Reference5 "1"
set Dims5 [list 0]
set Interface5 [list AP_STREAM 0] 
set structMem5 ""
set PortName50 "address"
set BitWidth50 "32"
set ArrayOpt50 ""
set Const50 "0"
set Volatile50 "0"
set Pointer50 "0"
set Reference50 "0"
set Dims50 [list 0]
set Interface50 "wire"
set DataType50 "[list ap_uint 32 ]"
set Port50 [list $PortName50 $Interface50 $DataType50 $Pointer50 $Dims50 $Const50 $Volatile50 $ArrayOpt50]
lappend structMem5 $Port50
set PortName51 "count"
set BitWidth51 "8"
set ArrayOpt51 ""
set Const51 "0"
set Volatile51 "0"
set Pointer51 "0"
set Reference51 "0"
set Dims51 [list 0]
set Interface51 "wire"
set DataType51 "[list ap_uint 8 ]"
set Port51 [list $PortName51 $Interface51 $DataType51 $Pointer51 $Dims51 $Const51 $Volatile51 $ArrayOpt51]
lappend structMem5 $Port51
set structParameter5 [list ]
set structArgument5 [list ]
set NameSpace5 [list ]
set structIsPacked5 "0"
set DataType5 [list "memCtrlWord" "struct memCtrlWord" $structMem5 1 0 $structParameter5 $structArgument5 $NameSpace5 $structIsPacked5]
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "memRdData"
set BitWidth6 "512"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "2"
set Reference6 "1"
set Dims6 [list 0]
set Interface6 [list AP_STREAM 0] 
set DataType6 "[list ap_uint 512 ]"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set PortName7 "dmRdCmd"
set BitWidth7 "128"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "2"
set Reference7 "1"
set Dims7 [list 0]
set Interface7 [list AP_STREAM 0] 
set structMem7 ""
set PortName70 "btt"
set BitWidth70 "32"
set ArrayOpt70 ""
set Const70 "0"
set Volatile70 "0"
set Pointer70 "0"
set Reference70 "0"
set Dims70 [list 0]
set Interface70 "wire"
set DataType70 "[list ap_uint 23 ]"
set Port70 [list $PortName70 $Interface70 $DataType70 $Pointer70 $Dims70 $Const70 $Volatile70 $ArrayOpt70]
lappend structMem7 $Port70
set PortName71 "type"
set BitWidth71 "8"
set ArrayOpt71 ""
set Const71 "0"
set Volatile71 "0"
set Pointer71 "0"
set Reference71 "0"
set Dims71 [list 0]
set Interface71 "wire"
set DataType71 "[list ap_uint 1 ]"
set Port71 [list $PortName71 $Interface71 $DataType71 $Pointer71 $Dims71 $Const71 $Volatile71 $ArrayOpt71]
lappend structMem7 $Port71
set PortName72 "dsa"
set BitWidth72 "8"
set ArrayOpt72 ""
set Const72 "0"
set Volatile72 "0"
set Pointer72 "0"
set Reference72 "0"
set Dims72 [list 0]
set Interface72 "wire"
set DataType72 "[list ap_uint 6 ]"
set Port72 [list $PortName72 $Interface72 $DataType72 $Pointer72 $Dims72 $Const72 $Volatile72 $ArrayOpt72]
lappend structMem7 $Port72
set PortName73 "eof"
set BitWidth73 "8"
set ArrayOpt73 ""
set Const73 "0"
set Volatile73 "0"
set Pointer73 "0"
set Reference73 "0"
set Dims73 [list 0]
set Interface73 "wire"
set DataType73 "[list ap_uint 1 ]"
set Port73 [list $PortName73 $Interface73 $DataType73 $Pointer73 $Dims73 $Const73 $Volatile73 $ArrayOpt73]
lappend structMem7 $Port73
set PortName74 "drr"
set BitWidth74 "8"
set ArrayOpt74 ""
set Const74 "0"
set Volatile74 "0"
set Pointer74 "0"
set Reference74 "0"
set Dims74 [list 0]
set Interface74 "wire"
set DataType74 "[list ap_uint 1 ]"
set Port74 [list $PortName74 $Interface74 $DataType74 $Pointer74 $Dims74 $Const74 $Volatile74 $ArrayOpt74]
lappend structMem7 $Port74
set PortName75 "startAddress"
set BitWidth75 "32"
set ArrayOpt75 ""
set Const75 "0"
set Volatile75 "0"
set Pointer75 "0"
set Reference75 "0"
set Dims75 [list 0]
set Interface75 "wire"
set DataType75 "[list ap_uint 32 ]"
set Port75 [list $PortName75 $Interface75 $DataType75 $Pointer75 $Dims75 $Const75 $Volatile75 $ArrayOpt75]
lappend structMem7 $Port75
set PortName76 "tag"
set BitWidth76 "8"
set ArrayOpt76 ""
set Const76 "0"
set Volatile76 "0"
set Pointer76 "0"
set Reference76 "0"
set Dims76 [list 0]
set Interface76 "wire"
set DataType76 "[list ap_uint 4 ]"
set Port76 [list $PortName76 $Interface76 $DataType76 $Pointer76 $Dims76 $Const76 $Volatile76 $ArrayOpt76]
lappend structMem7 $Port76
set PortName77 "rsvd"
set BitWidth77 "8"
set ArrayOpt77 ""
set Const77 "0"
set Volatile77 "0"
set Pointer77 "0"
set Reference77 "0"
set Dims77 [list 0]
set Interface77 "wire"
set DataType77 "[list ap_uint 4 ]"
set Port77 [list $PortName77 $Interface77 $DataType77 $Pointer77 $Dims77 $Const77 $Volatile77 $ArrayOpt77]
lappend structMem7 $Port77
set structParameter7 [list ]
set structArgument7 [list ]
set NameSpace7 [list ]
set structIsPacked7 "0"
set DataType7 [list "datamoverCtrlWord" "struct datamoverCtrlWord" $structMem7 1 0 $structParameter7 $structArgument7 $NameSpace7 $structIsPacked7]
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7]
lappend PortList $Port7
set PortName8 "dmRdData"
set BitWidth8 "1024"
set ArrayOpt8 ""
set Const8 "0"
set Volatile8 "0"
set Pointer8 "2"
set Reference8 "1"
set Dims8 [list 0]
set Interface8 [list AP_STREAM 0] 
set structMem8 ""
set PortName80 "data"
set BitWidth80 "512"
set ArrayOpt80 ""
set Const80 "0"
set Volatile80 "0"
set Pointer80 "0"
set Reference80 "0"
set Dims80 [list 0]
set Interface80 "wire"
set DataType80 "[list ap_uint 512 ]"
set Port80 [list $PortName80 $Interface80 $DataType80 $Pointer80 $Dims80 $Const80 $Volatile80 $ArrayOpt80]
lappend structMem8 $Port80
set PortName81 "keep"
set BitWidth81 "64"
set ArrayOpt81 ""
set Const81 "0"
set Volatile81 "0"
set Pointer81 "0"
set Reference81 "0"
set Dims81 [list 0]
set Interface81 "wire"
set DataType81 "[list ap_uint 64 ]"
set Port81 [list $PortName81 $Interface81 $DataType81 $Pointer81 $Dims81 $Const81 $Volatile81 $ArrayOpt81]
lappend structMem8 $Port81
set PortName82 "last"
set BitWidth82 "8"
set ArrayOpt82 ""
set Const82 "0"
set Volatile82 "0"
set Pointer82 "0"
set Reference82 "0"
set Dims82 [list 0]
set Interface82 "wire"
set DataType82 "[list ap_uint 1 ]"
set Port82 [list $PortName82 $Interface82 $DataType82 $Pointer82 $Dims82 $Const82 $Volatile82 $ArrayOpt82]
lappend structMem8 $Port82
set structParameter8 [list ]
set structArgument8 [list ]
set NameSpace8 [list ]
set structIsPacked8 "0"
set DataType8 [list "axiWord" "struct axiWord" $structMem8 1 0 $structParameter8 $structArgument8 $NameSpace8 $structIsPacked8]
set Port8 [list $PortName8 $Interface8 $DataType8 $Pointer8 $Dims8 $Const8 $Volatile8 $ArrayOpt8]
lappend PortList $Port8
set PortName9 "dmRdStatus"
set BitWidth9 "8"
set ArrayOpt9 ""
set Const9 "0"
set Volatile9 "0"
set Pointer9 "2"
set Reference9 "1"
set Dims9 [list 0]
set Interface9 [list AP_STREAM 0] 
set DataType9 "[list ap_uint 8 ]"
set Port9 [list $PortName9 $Interface9 $DataType9 $Pointer9 $Dims9 $Const9 $Volatile9 $ArrayOpt9]
lappend PortList $Port9
set PortName10 "dmRdAddrPosted"
set BitWidth10 "8"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "[list ap_uint 1 ]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend PortList $Port10
set PortName11 "dmWrAddrPosted"
set BitWidth11 "8"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "[list ap_uint 1 ]"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend PortList $Port11
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
