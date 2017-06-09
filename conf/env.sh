#!/bin/bash

export PROJECT_HOME=$(pwd)

# setting JULIA_HOME breaks julia execution
export JULIA_BIN=$PROJECT_HOME/software/julia
export JULIA_PKGDIR=$PROJECT_HOME/software/julia-pkg

# export JULIA_LOAD_PATH=$PROJECT_HOME/src/MODULE
# export JULIA_LOAD_PATH=$JULIA_LOAD_PATH:$PROJECT_HOME/src/MODULE

export CONDA_HOME=$PROJECT_HOME/software/conda
export JUPYTER_DATA_DIR=$PROJECT_HOME/software/jupyter_data
