#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sameh/StateMover/StateLink/IPs/Ethernet_AXI_Splitter/ProjEthernetAXISplitter/SolutionX/.autopilot/db/a.g.bc ${1+"$@"}
