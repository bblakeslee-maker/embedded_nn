#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tyrian/nnproject/hls8BitFloatMod/Lenet5_50MHz/.autopilot/db/a.g.bc ${1+"$@"}
