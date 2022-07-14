#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sameh/StateMover/StateLink/IPs/AXIS_Timestamper/ProjAXISTimestamper/SolutionX/.autopilot/db/a.g.bc ${1+"$@"}
