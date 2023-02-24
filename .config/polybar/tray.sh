#!/bin/bash

#infinite loop
while :
do
    FOCUSED=$(xprop -root _NET_ACTIVE_WINDOW | awk -F' ' '{print $NF}')

    if xprop -id ${FOCUSED} _NET_WM_STATE | grep -q _NET_WM_STATE_FULLSCREEN; then
        polybar-msg cmd hide
    else
        polybar-msg cmd show
    fi
    sleep 5
done
