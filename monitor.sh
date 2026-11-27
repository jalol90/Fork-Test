#!/usr/bin/env bash

process=$1

# shellcheck disable=SC2034
logfile="/c/Users/ICH/Desktop/it_hub/uroki/Linux_&_Git/16 PR в Pycharm/bash_script/process_log.log"

if [ -z "$process" ]
  then
    echo "enter process name"
    exit 1
fi

if pgrep "$process" > /dev/null; then
  echo "Process $process is working"
else
  echo "$(date): Process $process down" >> "$logfile"
fi