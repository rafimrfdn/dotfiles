#!/bin/sh

xset r rate 300 50 &
xset mouse 5 1 &
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
xrandr --output LVDS-1 --brightness 0.9 &
feh --bg-fill --randomize ~/Pictures/wp/* &
#conky -b &
#picom &
# the LTS Version of PopOS (20.04) using old kernel (5.4) only available compton
compton &
copyq &
while true; do
    nm-applet &
    dwm >/dev/null 2>&1
done
exec dwm
