# User specific environment and startup programs 
# I run Gnome on TTY1 and DWM on TTY2

if [[ -z $DISPLAY && $(tty) == /dev/tty2 && $XDG_SESSION_TYPE == tty ]]; then
   exec dbus-launch startx
fi

if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
   MOZ_ENABLE_WAYLAND=1 QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
fi
