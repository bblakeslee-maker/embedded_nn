#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tyrian/nnproject/hls8Bit16Quant/solution1/.autopilot/db/a.g.bc ${1+"$@"}
