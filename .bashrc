#
# ~/.bashrc
#

# automatic startx at login
#if [[ "${tty}" =  "/dev/tty1" ]]; then
#  exec startx
#fi

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

#
# make ST Terminal transparent
term="$(cat /proc/$PPID/comm)"
if [[ $term = "st" ]]; then
    transset-df "0.8" --id "$WINDOWID"  ⋗/dev/null
fi
