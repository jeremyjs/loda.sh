#!/usr/bin/env bash

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

# TODO: provide an upgrade function
function _.sh () {
  case "$1" in
    *"" | *"" | *"")
      return
    ;;
    *)
      echo "Unrecognized command: $1"
      echo "Available commands: ${COMMANDS[$@]}"
      echo
      return 1
    ;;
  esac
}
