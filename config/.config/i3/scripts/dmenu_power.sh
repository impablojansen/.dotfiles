#!/bin/bash

shutdown="⏻ POWER OFF"
reboot=" REBOOT"
logout="󰍃 LOGOUT"

options="$shutdown\n$reboot\n$logout"

chosen="$(echo -e "$options" | dmenu -i -b -p 'POWER MENU')"

if [ -n "$chosen" ]; then
    case $chosen in
        $shutdown)
            sudo shutdown -h now
            ;;
        $reboot)
            sudo shutdown -r now
            ;;
        $logout)
            pkill -KILL -u $USER
            ;;
    esac
fi
