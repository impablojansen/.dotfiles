#!/bin/bash

while ! xrandr | grep " connected"; do
	sleep 1
done

feh --bg-center ~/Downloads/wallpaper_m1.png ~/Downloads/wallpaper_m2.png
