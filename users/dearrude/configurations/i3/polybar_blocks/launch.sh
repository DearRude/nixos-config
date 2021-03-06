#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/blocks"

# Terminate already running bar instances
polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &
