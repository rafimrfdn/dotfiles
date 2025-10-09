# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nvim="~/Packages/nvim12/bin/nvim"
alias vim="nvim"
alias neofetch="fastfetch"
alias hs='hugo server --noHTTPCache'
alias sisa='du -h --max-depth=1 . | sort -h' PS1='[\u@\h \W]\$ '
. "/home/opensuse/.deno/env"
source /home/opensuse/.local/share/bash-completion/completions/deno.bash
