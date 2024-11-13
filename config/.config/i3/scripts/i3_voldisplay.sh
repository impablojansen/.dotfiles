#!/bin/bash

output=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if echo "$output" | grep -q "MUTED"; then
    echo "  MUTE"
else
    volume=$(echo "$output" | awk '{print int($2 * 100)}')
    if (( volume == 0 )); then
        echo "  ${volume}%"
    elif (( volume < 51 )); then
        echo "  ${volume}%"
    else
        echo "  ${volume}%"
    fi
fi
