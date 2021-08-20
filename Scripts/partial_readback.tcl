# DISCLAIMER: This file is adopted from the readback_capture.tcl file provided with the XAPP1230 application note 
# from Xilinx (https://www.xilinx.com/support/documentation/application_notes/xapp1230-configuration-readback-capture.pdf).

#---------------------------------------------------------------------------------------------------------------------
# Sample script to program and to perform readback capture on the XCKU040 - KCU105 Development Board
#
# Rev History:
# 2015/05: 2015.1 Script to Program XCKU040 and Perform Readback Capture
#
#---------------------------------------------------------------------------------------------------------------------
# Perform Readback Capture
#
# 1. Start vivado in tcl mode (vivado -mode tcl)
# 2. open_hw
# 3. Connect to the hw_server (connect_hw_server)  
# 4. Open hardware target in jtag mode (open_hw_target -jtag_mode 1)
# 5. Source this file
# 6. To readback, run rdbk_jtag  
#    - for xcku040 example: 
#         rdbk_jtag c:/XAPP1230/LED_Count.rdbk 32530 00000000 1 0
#          where 
#          LED_Count.rdbk is file to dump readback capture data
#          32530: number of frames to read
#          00000000: frame start address
#          1: overwrite option, will overwrite file if exists (1=yes, 0=no)
#          0: skip post-processing option, will skip the post processing step (reversing and formatting the readback data)
#      
#---------------------------------------------------------------------------------------------------------------------
# Defines for readback capture routine
#---------------------------------------------------------------------------------------------------------------------
set file_log ____rdbk.log
set prog_ctrl 1
set fileOutput 0
set globDebug 0

set optOverwrite 0

#Defines word per frame for UltraScale
set DEF_WPF 123

#Defines pipeline value to add to frame count
set DEF_FDR_PIPE_DEPTH 10

#Defines UltraScale JTAG instruction opcodes 
set DEF_USER4              0x23
set DEF_JCONFIG            0x05
set DEF_JRDBK              0x04
set DEF_BYPASS             0x3F
set DEF_CMD_IDCODE         0x09

#Defines UltraScale configuration register commands
set DEF_TYPE_1 001
set DEF_TYPE_2 010
set DEF_IDCODE 01100
set DEF_WRITE 10
set DEF_READ  01
set DEF_FDRO 00011
set DEF_FDRI 00010
set DEF_FAR  00001
set DEF_CMD  00100
set DEF_MSK  00110 
set DEF_CTL1 11000
set DEF_CTL0 00101

#Defines UltraScale syncword
set DEF_SYNCWORD AA995566

#-----------------------------------------------------------------------------
# Type 1 Packet register addresses (in hex)
#-----------------------------------------------------------------------------
set regNameArr(0)  "CRC     "
set regNameArr(1)  "FAR     " 
set regNameArr(2)  "CTL0    "  
set regNameArr(4)  "COR0    "
set regNameArr(5)  "CBC     "
set regNameArr(6)  "IDCODE  "
set regNameArr(7)  "COR1    "
set regNameArr(11) "EFAR    "
set regNameArr(14) "CTL1    "
 

set regAddrArr(0)  0x00
set regAddrArr(1)  0x01
set regAddrArr(2)  0x05
set regAddrArr(4)  0x09
set regAddrArr(5)  0x0B
set regAddrArr(6)  0x0C
set regAddrArr(7)  0x0E
set regAddrArr(11) 0x15
set regAddrArr(14) 0x18
 

#-----------------------------------------------------------------------------
# Setup hex to bin array
# Ex: 0x5  = binary 0101
#-----------------------------------------------------------------------------
proc setHexBinTbl {} {
  global arrayHexBinVal

  set arrayHexBinVal(0) 0000
  set arrayHexBinVal(1) 0001
  set arrayHexBinVal(2) 0010
  set arrayHexBinVal(3) 0011
  set arrayHexBinVal(4) 0100
  set arrayHexBinVal(5) 0101
  set arrayHexBinVal(6) 0110
  set arrayHexBinVal(7) 0111
  set arrayHexBinVal(8) 1000
  set arrayHexBinVal(9) 1001
  set arrayHexBinVal(A) 1010
  set arrayHexBinVal(B) 1011
  set arrayHexBinVal(C) 1100
  set arrayHexBinVal(D) 1101
  set arrayHexBinVal(E) 1110
  set arrayHexBinVal(F) 1111

  set arrayHexBinVal(a) 1010
  set arrayHexBinVal(b) 1011
  set arrayHexBinVal(c) 1100
  set arrayHexBinVal(d) 1101
  set arrayHexBinVal(e) 1110
  set arrayHexBinVal(f) 1111
}
#-----------------------------------------------------------------------------
# Reverse hex values in str
#-----------------------------------------------------------------------------
# Setup array to return reverse of specified hex value
# Ex: 0x5 (binary 0101) when reversed is 0xA (binary 1010)
#-----------------------------------------------------------------------------
proc setHexRevTbl {} {
  global arrayHexVal

  set arrayHexVal(0) 0
  set arrayHexVal(1) 8
  set arrayHexVal(2) 4
  set arrayHexVal(3) C
  set arrayHexVal(4) 2
  set arrayHexVal(5) A
  set arrayHexVal(6) 6
  set arrayHexVal(7) E
  set arrayHexVal(8) 1
  set arrayHexVal(9) 9
  set arrayHexVal(A) 5
  set arrayHexVal(B) D
  set arrayHexVal(C) 3
  set arrayHexVal(D) B
  set arrayHexVal(E) 7
  set arrayHexVal(F) F

  set arrayHexVal(a) 5
  set arrayHexVal(b) D
  set arrayHexVal(c) 3
  set arrayHexVal(d) B
  set arrayHexVal(e) 7
  set arrayHexVal(f) F
  return 1
}
#-----------------------------------------------------------------------------
# Reverse hex values in str
# Ex: 0x80034014 becomes 0x2802C001
# - Note: Chars in string are indexed [0 1 2 .. N-1]
# -       = works only for strings where the number of bits represented
#           by hex characters is a multiple of 4
#-----------------------------------------------------------------------------
proc revHexData {argHexStr} {
  global arrayHexVal
  global globDebug

  if {$globDebug == 1} {
    puts "In revHexData = $argHexStr"
  }

  if {![string is xdigit $argHexStr]} {
    puts "ERROR: TDI data contains non-hex chars"
    return "0x0x0x0"
  }
  set numchars [string length $argHexStr] 
  for {set iX 0} {$iX < $numchars} {incr iX} {
    set sHex [string index $argHexStr [expr ($numchars - $iX - 1)]]
    set sHex $arrayHexVal($sHex) 
    if {$iX == 0} {
      set sStr $sHex
      continue;
    } else {
      append sStr $sHex
    }
  }; # end of FOR $iX < $numchars
  return $sStr
}; # end of revHexData
#-----------------------------------------------------------------------------
# Convert hex data pattern to a bit pattern of argBitCount.
# - con2bin 10 36
#   = will be converted to 00_0011_0110
#-----------------------------------------------------------------------------
proc conv2bin { argBitCount argHexPattern } {
  global globDebug
  global arrayHexBinVal

  set iFirstHex 1

  if {$globDebug == 1} {
    puts "Conv2bin = $argBitCount $argHexPattern"
  }
  set numHexChars [string length $argHexPattern]
  set iY 0
  set iZ 0
  for {set iX 0} {$iX < $numHexChars} {incr iX} {
    set iHex [string index $argHexPattern [expr ($numHexChars - $iX - 1)]]
    set sTmp $arrayHexBinVal($iHex)
    if {$iX == 0} {
      set sBitStr $sTmp 
    } else {
      append sTmp $sBitStr
      set sBitStr $sTmp
    }
  }; # end of FOR iX < numHexChars

  set iLen [string length $sBitStr]
  if {$argBitCount < $iLen} {
# Strip leading 0s from converted hex to binary string
    set iX [expr ($iLen - $argBitCount)]
    for {set iY 0} {$iY < $iX} {incr iY} {
      if {[string index $sBitStr $iY] != 0} {
        puts "Specified bit count $argBitCount cannot represent hex pattern \[$argHexPattern\]"
	break
      }
    }
# strip the leading 0 bits from the generated binary string
    if {$iY >= $iX} {
      set sBitStr [string range $sBitStr $iX [expr ($iLen-1)]]
    }
  } elseif {$argBitCount > $iLen} {
# Pad with leading 0s
    set iX [expr ($argBitCount - $iLen)]
    set sTmp [format "%0*d" [expr ($iX+1)] 1]
    set sTmp [string range $sTmp 0 [expr ($iX-1)]]
    append sTmp $sBitStr
    set sBitStr $sTmp
  }; # end of if argBitCount < iLen

  return $sBitStr

}; # end of conv2bin
#-----------------------------------------------------------------------------
# Convert bit pattern of length argBitCount to hex format.
#-----------------------------------------------------------------------------
proc conv2hex { argBitCount argBitPattern } {
  global globDebug

  set iFirstHex 1

  if {$globDebug == 1} {
    puts "Conv2hex = $argBitCount $argBitPattern"
  }
  set numbits [string length $argBitPattern]
  if {$argBitCount != $numbits} {
    puts "Error: Bit pattern length != $argBitCount"
    return
  }
  set iY 0
  set iZ 0
  for {set iX 0} {$iX < $numbits} {incr iX} {
    if {[string index $argBitPattern [expr ($numbits - $iX - 1)]] == 1} {
      set iY [expr ($iY + (1 << $iZ))]
    }
    incr iZ
    if {$iZ >= 4} {
      if {$iFirstHex == 1} {
        set sHexPattern [format "%X" $iY]
	set iFirstHex 0
      } else {
        set sHexChar [format "%X" $iY]
        append sHexChar $sHexPattern
	set sHexPattern $sHexChar
      }
      set iY 0
      set iZ 0
    }
  }; # end of FOR iX < numbits

# The following code handles case where bit count is not a multiple of 4
  if {$iZ > 0} {
    if {$iFirstHex == 1} {
      set sHexPattern [format "%X" $iY]
    } else {
      append iY $sHexPattern
      set sHexPattern $iY
    }
  }
  return $sHexPattern

}; # end of conv2hex
#-----------------------------------------------------------------------------
# Setup the tables used by some tcl procs
#-----------------------------------------------------------------------------
proc script_setup {} {

  setHexRevTbl
  setHexBinTbl
}; # end of script_setup
#-----------------------------------------------------------------------------
# Setup TDI data for CFG_IN command
#-----------------------------------------------------------------------------
proc setup_Cfg_In_Data {argRegAddr} {
  global globDebug

  set sConfRegReadCmd 0x28000001
  set sTmpVar [format "0x%08X" [expr ($argRegAddr << 13)]]
  if {$globDebug == 1} {
    puts "sTmpVar = $argRegAddr << 13 = $sTmpVar"
  }
  set sConfRegReadCmd [format "%08X" [expr ($sConfRegReadCmd | $sTmpVar)]]
  if {$globDebug == 1} { 
    puts "sConfRegReadCmd = $sConfRegReadCmd"
  }

  set sTmpVar AA995566
  append sTmpVar 20000000
  append sTmpVar $sConfRegReadCmd
  append sTmpVar 20000000
  append sTmpVar 20000000
  append sTmpVar 30008001
  append sTmpVar 0000000D
  append sTmpVar 20000000
  append sTmpVar 20000000

  return [revHexData $sTmpVar]

}; # end of setup_Cfg_In_Data

#-----------------------------------------------------------------------------
proc setup_log {} {

  global file_log
  global prog_ctrl
  global fileOutput
  global optOverwrite

  if {[file exists $file_log]} {
    puts -nonewline "File \[$file_log\] exists;"
    if {$optOverwrite == 0} {
      puts " file exists, to overwrite the option must be set to 1"
      set prog_ctrl 0
      return
    }
   } else {
     puts  -nonewline "File \[$file_log\] does not exist;"
   }
   puts " script will overwrite file"
   set fileOutput [open $file_log w 0600]
   return
  }

#-----------------------------------------------------------------------------
# Setup readback command sequence
#-----------------------------------------------------------------------------
proc setup_rdbk_cmd {argFrameCount argStartAddress} {
  global DEF_CMD
  global DEF_WPF
  global DEF_FDR_PIPE_DEPTH
  global DEF_SYNCWORD
  global DEF HDR_W1_CMD
  global DEF_WPF
  global DEF_FDR_PIPE_DEPTH
  global DEF_TYPE_1
  global DEF_TYPE_2
  global DEF_WRITE
  global DEF_READ
  global DEF_FAR
  global DEF_NULL_CMD
  global DEF_FDRO
  global DEF_IDCODE  
  global DEF_FDRI  
  global DEF_MSK  
  global DEF_CTL1  
  global DEF_CTL0  
  global DEF_STAT  
  global DEF_BOOTSTS  
  global DEF_COR0  
  global DEF_COR1  
  global DEF_BSPI  
  global DEF_WBSTAR  
  global DEF_CRC  
  global DEF_MFWR  
  global DEF_CBC  
  global DEF_AXSS  
  global DEF_TIMER  
  #global DEF_USER4

  set sTmp ffffffff
  append sTmp $DEF_SYNCWORD
#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add HDR_W1_CMD - 30008001
#-------------------------------
  set    sTmp2 $DEF_TYPE_1
  append sTmp2 $DEF_WRITE
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_CMD
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]

#  puts "sTmp2 sTmp = $sTmp2 $sTmp"

#-------------------------------
# Add CMD_W1 - NULL - no action
#-------------------------------
  append sTmp 00000000

#-------------------------------
# Add HDR_W1_MSK - 3000C001
#-------------------------------
  set    sTmp2 $DEF_TYPE_1 
  append sTmp2 $DEF_WRITE 
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_MSK
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]

#  puts "sTmp2 sTmp = $sTmp2 $sTmp"

#-------------------------------
# Add MSK_W1 - Bit[23] = 1
#-------------------------------
  append sTmp 00800000

#-------------------------------
# Add HDR_W1_CTL1 - 30030001
#-------------------------------
  set    sTmp2 $DEF_TYPE_1 
  append sTmp2 $DEF_WRITE 
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_CTL1
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]

#  puts "sTmp2 sTmp = $sTmp2 $sTmp"

#-------------------------------
# Add CTL1_W1 - Bit[23] = 1
#-------------------------------
  append sTmp 00800000

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
# puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
# puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
# puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
# puts "sTmp = $sTmp"


#-------------------------------
# Add HDR_W1_FAR
#-------------------------------
  set    sTmp2 $DEF_TYPE_1
  append sTmp2 $DEF_WRITE
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_FAR
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]
# puts "sTmp2 sTmp = $sTmp2 $sTmp"
#-------------------------------
# Add frame address
#-------------------------------
  append sTmp $argStartAddress
#-------------------------------
# Add HDR_W1_CMD
#-------------------------------
  set    sTmp2 $DEF_TYPE_1
  append sTmp2 $DEF_WRITE
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_CMD
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]
#  puts "sTmp2 sTmp = $sTmp2 $sTmp"
#-------------------------------
# Add RCFG_CMD
#-------------------------------
  append sTmp 00000004
#-------------------------------
# Add HDR_RNF_FDRO
#-------------------------------
  set    sTmp2 $DEF_TYPE_1
  append sTmp2 $DEF_READ
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_FDRO
  append sTmp2 00
  append sTmp2 00000000000

  append sTmp [conv2hex 32 $sTmp2]
#  puts "$sTmp2 sTmp = sTmp2 $sTmp"
#-------------------------------
# Add HDR_RNF2_FDRO
#-------------------------------
  set    sTmp2 $DEF_TYPE_2
  append sTmp2 $DEF_READ
  append sTmp2 000000000000000000000000000

  set sTmp3 0x[conv2hex 32 $sTmp2]
#  puts "sTmp2 sTmp3 = $sTmp2 $sTmp3"
#-------------------------------
# add framecount -> wcnt = (WPF * frmcnt + 1) + FDR_PIPE_DEPTH
# - WPF = 123
# - FDR_PIPE_DEPTH = 10
#-------------------------------
  set valWordCount [format "0x%08X" \
       [expr (($DEF_WPF * ($argFrameCount + 1)) + $DEF_FDR_PIPE_DEPTH)]] 
#  puts "valWordCount = $valWordCount"
  set sTmp4 [format "%08X" [expr ($sTmp3 | $valWordCount)]]
#  puts "sTmp4 = $sTmp4"

  append sTmp $sTmp4 

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add HDR_W1_CMD - 30008001
#-------------------------------
  set    sTmp2 $DEF_TYPE_1
  append sTmp2 $DEF_WRITE
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_CMD
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]

#  puts "sTmp2 sTmp = $sTmp2 $sTmp"

#-------------------------------
# Add CMD_W1 - NULL - no action
#-------------------------------
  append sTmp 00000000

#-------------------------------
# Add HDR_W1_MSK - 3000C001
#-------------------------------
  set    sTmp2 $DEF_TYPE_1 
  append sTmp2 $DEF_WRITE 
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_MSK
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]

#  puts "sTmp2 sTmp = $sTmp2 $sTmp"

#-------------------------------
# Add MSK_W1 - Bit[23] = 1
#-------------------------------
  append sTmp 00800000

#-------------------------------
# Add HDR_W1_CTL1 - 30030001
#-------------------------------
  set    sTmp2 $DEF_TYPE_1 
  append sTmp2 $DEF_WRITE 
  append sTmp2 000000
  append sTmp2 000
  append sTmp2 $DEF_CTL1
  append sTmp2 00
  append sTmp2 00000000001

  append sTmp [conv2hex 32 $sTmp2]

#  puts "sTmp2 sTmp = $sTmp2 $sTmp"

#-------------------------------
# Add CTL1_W1 - Bit[23] = 0
#-------------------------------
  append sTmp 00000000

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"

#-------------------------------
# Add NO_OP command - 20000000
#-------------------------------
  append sTmp 20000000
#  puts "sTmp = $sTmp"


  return $sTmp
}; # end of setup_rdbk_cmd
#-----------------------------------------------------------------------------
# Reverse the number of bits specified in the hex pattern.
#-----------------------------------------------------------------------------
proc revData {argHexPattern argBitCount} {

}; # end of revData
#-----------------------------------------------------------------------------
# Readback via JTAG 
# - argFrameCount = framecount for a device can be found in the UltraScale 
# Configuration User Guide UG570
#-----------------------------------------------------------------------------
proc rdbk_jtag {argfile_log_name argFrameCount argStartAddress argOverwrite skipPostProcess} {

  set argFormat 1 

  set sOperationStart [clock format [clock seconds]]

  global prog_ctrl
  global fileOutput
  global DEF_JCONFIG
  global DEF_JRDBK
  global DEF_BYPASS
  global arrayHexVal
  global arrayHexBinVal
  global DEF_WPF
  global file_log

  global optOverwrite

  set optOverwrite $argOverwrite

  setHexRevTbl
  setHexBinTbl

  set prog_ctrl 1
  set file_log $argfile_log_name
  setup_log
  if {$prog_ctrl == 0} {
   return
  }

  set sTmpVar [setup_rdbk_cmd $argFrameCount $argStartAddress]
  set iBitCount [expr ([string length $sTmpVar] * 4)]
  set sTdiData [revHexData $sTmpVar]
  #puts "sTdiData = $sTdiData"
  set iRdbkCmdLength [expr ([string length $sTdiData] * 4)]
  puts "Rdbk cmd length = $iRdbkCmdLength"
   

  scan_ir_hw_jtag 6 -tdi $DEF_JCONFIG
  scan_dr_hw_jtag $iRdbkCmdLength -tdi $sTdiData
  
  set iReadbackCount [expr (($DEF_WPF * ($argFrameCount + 1) + 10) * 32)]
  puts "----------------------------------------------------------------"
  puts "==> Framecount = $argFrameCount"
  puts "    Configuration readback count = $iReadbackCount"
  puts "    - readback data will be written to file \[$file_log\]"
  puts "----------------------------------------------------------------"


  scan_ir_hw_jtag 6 -tdi $DEF_JRDBK
  set sReadback [scan_dr_hw_jtag $iReadbackCount -tdi 0]

  if { $skipPostProcess } {
      puts -nonewline $fileOutput $sReadback

      # Convert to binary
      #set fp [open text.bin w]
      #set sReadbackBinary [binary format H* $sReadback]
      #puts -nonewline $fp $sReadbackBinary
      #close $fp
  } else {
    # Reverse readback data to match order in bitstream
    set numchars [string length $sReadback]
    # puts "==> Readback string length = $numchars"
    set iY 0

    # Put into ascii 32 bit RBT type format 
    if {$argFormat == 0} {
      for {set iX [expr ($numchars - 1)]} {$iX >= 0} {incr iX -1} {
        incr iY
        if { $iY < 64} {
          puts -nonewline $fileOutput \
                $arrayHexVal([string index $sReadback [expr ($iX)]])
        } else {
          puts            $fileOutput \
                $arrayHexVal([string index $sReadback [expr ($iX)]])
          set iY 0
        }
      }
    } else {
      for {set iX [expr ($numchars - 1)]} {$iX >= 0} {incr iX -1} {
        incr iY
        if { $iY < 8} {
          puts -nonewline $fileOutput \
                $arrayHexBinVal($arrayHexVal([string index $sReadback\
  	                                   [expr ($iX)]]))
        } else {
          puts            $fileOutput \
                $arrayHexBinVal($arrayHexVal([string index $sReadback\
  	                                   [expr ($iX)]]))
          set iY 0
        }
      }
    }; # end of IF $argFormat == 0

    puts "==> Readback string length = $numchars"
  }

  scan_ir_hw_jtag 6 -tdi $DEF_BYPASS

  close $fileOutput

  set sOperationStop  [clock format [clock seconds]]
  puts "----- Readback Capture -----"
  puts "- Start time : $sOperationStart"
  puts "- Stop  time : $sOperationStop"

}; # end of RDBK_JTAG
#-----------------------------------------------------------------------------
# Open and return pointer to argFileName
#-----------------------------------------------------------------------------
proc xOpenFile { argFileName } {

  if [catch {open $argFileName r} pFilePtr] {
    puts stderr "Error: cannot open file \[$argFileName\]"
    return -1
  }
  return $pFilePtr

}; # end of xOpenFile
#-----------------------------------------------------------------------------
# Count and return number of data bits in the file
#-----------------------------------------------------------------------------
proc xCountBits { argFilePtr } {
  global globDebug

  set iBitCount 0
  set iLineCount 0
  while {[gets $argFilePtr sDataLine] >= 0} {
    incr iLineCount 
    if {$iLineCount%524288 == 0} {
      puts "-> reading line $iLineCount"
    }
    if {$globDebug == 1} {
      puts "Dataline = $sDataLine"
    }

    set numchars [string length $sDataLine]
    if {$numchars == 0} {
      continue
    }
    set cChar [string index $sDataLine 0]
    if {$cChar != "0" && $cChar != "1"} {
      puts "skip line => $sDataLine"
      continue
    }
    incr iBitCount $numchars
  }; # end of WHILE
  if {$globDebug == 1} {
    puts "File has $iBitCount bits"
  }
  return iBitCount

}; # end of xCountBits
#-----------------------------------------------------------------------------
# Get a row of data from file pointer argFilePtr
# - return length of row through argRowLength
# - return row of data read from argFilePtr
# - return 0 if no more data in the file pointer, 1 otherwise
#-----------------------------------------------------------------------------
proc xGetDataLine { argFilePtr argData argRowLength } {
  upvar 1 $argFilePtr vFilePtr
  upvar 1 $argData vData
  upvar 1 $argRowLength vRowLength

  set vData "-X-"
  set vRowLength -200
  while {[gets $vFilePtr vData] >= 0} {
    set vRowLength [string length $vData]
    if {$vRowLength == 0} {
      continue
    }
    set cChar [string index $vData 0]
    if {$cChar != "0" && $cChar != "1"} {
      continue
    }
    return 1
  }; # end of WHILE
  return 0

}; # end of xGetDataLine

#-----------------------------------------------------------------------------
# End of test script
#-----------------------------------------------------------------------------
