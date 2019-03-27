#!/usr/bin/env bash

LODA_VERSION="v0.1.0"

source src/each.sh
source src/map.sh
source src/reduce.sh
source src/find.sh
source src/filter.sh
source src/reject.sh
source src/every.sh
source src/some.sh
source src/contains.sh
source src/invoke.sh
source src/size.sh
source src/tap.sh
source src/now.sh

function _.sh () {
  CMD_VERSION="--version"
  CMD_UPGRADE="upgrade"
  
  COMMANDS=(
    CMD_UPGRADE
    CMD_VERSION
  )
  
  CMD="$1"
  
  if [ "$CMD" -eq CMD_UPGRADE ]; then
    $(cd ~/.loda.sh && git remote update -p && git checkout origin/master && source ~/.loda.sh/_.sh)
    return
  fi

  if [ "$CMD" -eq CMD_VERSION ]; then
    echo "$LODA_VERSION"
    return
  fi

  echo "Unrecognized command: $1"
  echo "Available commands: ${COMMANDS[$@]}"
  echo
  return 1
}
