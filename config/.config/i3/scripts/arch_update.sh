#!/bin/bash

updates=$(checkupdates)

count=$(( $(echo "$updates" | wc -l) - 1 ))

if [ "$count" -le 0 ]; then
    echo "<span foreground=\"green\"> System up to date</span>"
else
    if [ "$count" -eq 1 ]; then
        echo "<span foreground=\"yellow\"> $count package to update</span>"
    else
        echo "<span foreground=\"yellow\"> $count packages to update</span>"
    fi
fi
