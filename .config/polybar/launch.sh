#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
#for m in $(polybar --list-monitors | cut -d":" -f1); do
#    MONITOR=$m polybar --reload --config=~/.config/polybar/config.ini example & 2>&1
#done
 # | tee -a /tmp/polybar.log & disown
MONITOR=$(polybar --list-monitors | cut -d":" -f1 | sed -n 1p) polybar --reload --config=~/.config/polybar/config.ini example & 2>&1

echo "Polybar launched..."
