#
# ~/.bashrc
#

#automatic startx at login
if [[ "${tty}" =  "/dev/tty1" ]]; then
  exec startx
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
