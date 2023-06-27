#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	exec dbus-launch startx
fi
