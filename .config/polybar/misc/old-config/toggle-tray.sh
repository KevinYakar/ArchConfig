#!/bin/bash

processes=($( pgrep polybar | xargs))
numMonitors=$(( $( xrandr --listactivemonitors | wc -l ) - 1 ))

if (( ${#processes[@]} == 3 )); then
    kill ${processes[2]}
elif (( ${#processes[@]} == 2 )) && [ $numMonitors -eq 1 ]; then
    kill ${processes[1]}
else
    polybar music &
fi

