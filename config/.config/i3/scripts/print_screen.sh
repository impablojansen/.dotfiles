#!/bin/bash

case "$1" in
    Window)
        window_id=$(xdotool getactivewindow)
        
        eval $(xdotool getwindowgeometry --shell $window_id)

        maim -g ${WIDTH}x${HEIGHT}+${X}+${Y} | xclip -selection clipboard -t image/png
        ;;
    Selection)
        maim -su | xclip -selection clipboard -t image/png
        ;;
esac
