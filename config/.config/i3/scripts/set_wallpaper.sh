#!/bin/bash

wallpaper_path=$HOME/.config/i3/scripts/wallpaper

while ! xrandr | grep " connected"; do
	sleep 1
done

feh --bg-center $wallpaper_path/wallpaper_m1.png $wallpaper_path/wallpaper_m2.jpg
