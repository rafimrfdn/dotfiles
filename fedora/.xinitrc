#!/bin/sh

feh --bg-fill --randomize ~/Pictures/wp/* &
dwmblocks &
picom &
/usr/libexec/polkit-gnome-authentication-agent-1 &

while true;do
    pasystray &
    dwm >/dev/null 2>&1
done  
