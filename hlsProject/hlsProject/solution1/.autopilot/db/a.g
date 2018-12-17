#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tyrian/nnproject/hlsProject/hlsProject/solution1/.autopilot/db/a.g.bc ${1+"$@"}
