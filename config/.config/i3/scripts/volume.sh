#!/bin/bash

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}')

case "$1" in
    VolUp)
        if awk "BEGIN {exit !($volume < 1)}"; then
            wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+
        fi
        ;;
    VolDown)
        if awk "BEGIN {exit !($volume > 0)}"; then
            wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-
        fi
        ;;
    Mute)
        wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        ;;
esac
