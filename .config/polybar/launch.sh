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
export DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
export DHOME=$HOME/d

MONITOR=$(polybar --list-monitors | cut -d":" -f1 | sed -n 1p) polybar --reload --config=~/.config/polybar/config.ini example & 2>&1

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bottom &
  done
else
  polybar --reload bottom &
fi

echo "Polybar launched..."
