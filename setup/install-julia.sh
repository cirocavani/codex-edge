#!/usr/bin/env bash
set -eu

cd $(dirname "$0")/..
source conf/env.sh

mkdir -p .cache

JULIA_PKG=julia-1.1.1-linux-x86_64.tar.gz
JULIA_URL=https://julialang-s3.julialang.org/bin/linux/x64/1.1/$JULIA_PKG

if [ ! -f .cache/$JULIA_PKG ]; then
    curl -k -L -o .cache/$JULIA_PKG $JULIA_URL
fi

rm -rf $JULIA_INSTDIR
rm -rf $JULIA_DEPOT_PATH
mkdir -p $JULIA_INSTDIR

tar zxf .cache/$JULIA_PKG -C $JULIA_INSTDIR --strip-components=1

$JULIA_INSTDIR/bin/julia setup/setup.jl
