# ...

if [[ -z "$CODEX_HOME" ]]; then
  export CODEX_HOME="$(cd "`dirname "$0"`"/..; pwd)"
fi

export JULIA_PKGDIR=$CODEX_HOME/julia-pkg
# export JULIA_LOAD_PATH=$CODEX_HOME/src/MODULE
# export JULIA_LOAD_PATH=$JULIA_LOAD_PATH:$CODEX_HOME/src/MODULE

export JUPYTER_HOME=$CODEX_HOME/jupyter
export JUPYTER_ENV=$JUPYTER_HOME/codex-edge
export JUPYTER_DATA_DIR=$JUPYTER_HOME/data

source $JUPYTER_ENV/bin/activate
