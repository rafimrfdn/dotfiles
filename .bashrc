#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias hs='hugo server --noHTTPCache'
alias sisa='du -h --max-depth=1 . | sort -h'
PS1='[\u@\h \W]\$ '
. "/home/arch/.deno/env"
source /home/arch/.local/share/bash-completion/completions/deno.bash

eval "$(starship init bash)"
