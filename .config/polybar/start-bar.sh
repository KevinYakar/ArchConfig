#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Spawn one or two bars depending on the amount of monitors
numMonitors=$(( $( xrandr --listactivemonitors | wc -l ) - 1 ))
(( numMonitors == 2 )) &&\
    polybar --config="$HOME/.config/polybar/config.ini" first &\
    polybar --config="$HOME/.config/polybar/config.ini" second ||\
    polybar --config="$HOME/.config/polybar/config.ini" first &

sleep 1
~/.config/polybar/toggle-tray.sh

