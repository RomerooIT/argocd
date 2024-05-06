#!/bin/bash

previous_load=""

while :; do
    if [ -n "$previous_load" ]; then
        echo "$previous_load" > cpu_load.txt
    fi

    current_load=$(top -b -n 1 | grep "Cpu(s)")
    echo "$current_load" > cpu_load.txt

    previous_load="$current_load"

    sleep 1
done
