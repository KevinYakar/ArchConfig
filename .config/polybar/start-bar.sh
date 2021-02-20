#!/bin/bash

numMonitors=$(( $( xrandr --listactivemonitors | wc -l ) - 1 ))
[ $numMonitors -eq 2 ] && polybar first & polybar second || polybar first &
