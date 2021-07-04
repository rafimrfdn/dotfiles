#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# magic starts here

export PATH=$HOME/.local/bin:$PATH

#slstatus &
dwmblocks &
feh --bg-scale --randomize ~/Pictures/wp/* &
picom --config /home/artix/Programs/antoniosarosi/picom.conf & 
copyq &

while true;do
    nm-applet & 
    dwm >/dev/null 2>&1
done  

exec dwm 
