#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sje57/lab4/ecelinux/bnn.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
