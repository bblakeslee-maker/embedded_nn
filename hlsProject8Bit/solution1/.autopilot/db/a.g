#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tyrian/nnproject/hlsProject8Bit/solution1/.autopilot/db/a.g.bc ${1+"$@"}
