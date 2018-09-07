#!/bin/bash

cd $(dirname "$0")/..
source conf/env.sh
source $CONDA_HOME/bin/activate

mkdir -p .cache

JULIA_PKG=julia-0.6.4-linux-x86_64.tar.gz

if [ ! -f .cache/$JULIA_PKG ]; then
    curl -k -L \
        https://julialang-s3.julialang.org/bin/linux/x64/0.6/$JULIA_PKG \
        -o .cache/$JULIA_PKG
fi

rm -rf $JULIA_BIN
mkdir -p $JULIA_BIN

tar zxf .cache/$JULIA_PKG -C $JULIA_BIN --strip-components=1

rm -rf $JULIA_PKGDIR

$JULIA_BIN/bin/julia setup/setup.jl
