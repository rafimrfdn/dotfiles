if [[ "$(tty)" = "/dev/tty1" ]]; then
    exec dbus-launch startx
fi

export PATH=$HOME/.local/bin:$PATH
