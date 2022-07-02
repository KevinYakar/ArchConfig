#!/bin/bash

t=0
sleep_pid=0

toggle() {
    t=$(((t + 1) % 2))

    if [ "$sleep_pid" -ne 0 ]; then
        kill $sleep_pid >/dev/null 2>&1
    fi
}

trap "toggle" USR1

while true; do
    if [ $t -eq 0 ]; then
        dunstctl set-paused false
        echo "%{F#DDD}󰁓"
    else
        dunstctl set-paused true
        echo "%{F#9F78e1}󰁔"
    fi
    sleep 1 &
    sleep_pid=$!
    wait
done

