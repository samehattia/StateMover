#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sameh/Dropbox/UofT/Research/Work/Designs/debugging/E1_memcached/hls/readWriteConverterOffset_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
