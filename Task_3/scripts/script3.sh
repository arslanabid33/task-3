#!/bin/bash

## Define the process name
PROCESS="nginx"

## Use pgrep to check if the process is running
if pgrep "$PROCESS" > /dev/null
then
    echo "$PROCESS is running."
    else
        echo "$PROCESS is not running"
fi
