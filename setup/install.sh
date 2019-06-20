#!/usr/bin/env bash
set -eu

cd $(dirname "$0")/..

echo "Installing..."

setup/install-conda.sh
setup/install-julia.sh

echo "Install done!"
