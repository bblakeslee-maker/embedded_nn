#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tyrian/nnproject/hls8BitFloatMod/Lenet_100MHz/.autopilot/db/a.g.bc ${1+"$@"}
