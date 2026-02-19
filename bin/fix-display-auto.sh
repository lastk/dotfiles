#!/bin/bash

if xrandr | grep "HDMI-2 connected"; then
    xrandr --output HDMI-2 --primary --mode 2560x1080 --rate 60 --output eDP-1 --off
else
    xrandr --output eDP-1 --auto
fi

#if swaymsg -t get_outputs | grep -q '"name": "HDMI-2", "active": true'; then
#    swaymsg output HDMI-2 mode 2560x1080@60Hz
#    swaymsg output HDMI-2 enable
#    swaymsg output eDP-1 disable
#else
#    swaymsg output eDP-1 enable
#fi
