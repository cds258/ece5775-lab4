#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cds258/ece5775/labs/lab4/ecelinux/bnn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}