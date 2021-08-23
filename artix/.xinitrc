#!/bin/sh

export PATH=$HOME/.local/bin:$PATH

case $( basename "$( tty )" ) in 
#set DE for tty1
               tty1) 
/home/artix/.screenlayout/externalmonitor.sh &
dwmblocks &
feh --bg-scale --randomize ~/Pictures/wp/* &
picom --config /home/artix/Programs/antoniosarosi/picom.conf & 
copyq &

while true;do
    nm-applet & 
    dwm >/dev/null 2>&1
done  

#exec dbus-launch dwm 
#exec dwm 
dwm
;;

#set DE for tty2 
#           tty2) 
#                   exec cutefish-session 
esac
