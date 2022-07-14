#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sameh/StateMover/StateLink/IPs/AXI_Timestamper/ProjAXITimestamper/SolutionX/.autopilot/db/a.g.bc ${1+"$@"}
