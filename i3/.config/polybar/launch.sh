#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# https://github.com/polybar/polybar/issues/763#issuecomment-331604987

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload example &
    done
else
    polybar --reload example &
fi
echo "Bars launched..."
