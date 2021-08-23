export PATH=$HOME/.local/bin:$PATH
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"

if [[ "$(tty)" = "/dev/tty1" ]]; then
    exec dbus-launch startx
fi
