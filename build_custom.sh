#!/bin/bash -e

./build.sh
mv inc include
mkdir lib
cp build/metrics.xml lib
cp build/lib* lib
cp build/gfx_metrics.xml lib
mkdir tool && cp build/test/libtool.so tool
ln bin/rpl_run.sh bin/rocprof