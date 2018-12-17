#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tyrian/nnproject/hls8BitFloatMod/solution1/.autopilot/db/a.g.bc ${1+"$@"}
