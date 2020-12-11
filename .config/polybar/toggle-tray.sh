#!/bin/bash

processes=($( pgrep polybar | xargs))

if (( ${#processes[@]} == 2 )); then
    kill ${processes[1]}
else
    polybar music &
fi

