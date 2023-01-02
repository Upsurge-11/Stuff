#!/usr/bin/env bash

# terminate already running bar instances
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $uid -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar top -c ~/.config/polybar/config.ini &
