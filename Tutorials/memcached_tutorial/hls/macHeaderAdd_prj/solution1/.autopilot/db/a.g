#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sameh/Dropbox/UofT/Research/Work/Designs/debugging/memcached/hls/macHeaderAdd_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
