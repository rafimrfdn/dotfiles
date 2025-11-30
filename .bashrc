# Setup color scheme for list call
alias ll='/bin/ls --color=auto -lF'
alias la='/bin/ls --color=auto -axF'
alias ls='/bin/ls --color=auto -xF'
alias nvim='~/Appimage/nvim-linux-x86_64.Appimage'
alias vim='nvim'
alias hugo='~/Appimage/hugo/hugo'
alias logout='pkill -u $USER'

# Setup shell prompt for root
PS1='\[\033[01;32m\]\u@\h:\[\033[01;32m\]\w\$\[\033[00m\] '
PS2='> '
