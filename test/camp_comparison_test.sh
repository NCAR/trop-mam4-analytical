#!/bin/bash

# exit on error
set -e
# turn on command echoing
set -v
# make sure that the current directory is the one where this script is
cd ${0%/*}
# make the output directory if it doesn't exist
mkdir -p out

exec_str="../camp_comparison_test"

if ! $exec_str; then
    echo Failure
    exit 1
  else
    echo PASS
    exit 0
fi
