# Created by newuser for 5.9
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias vim="nvim"
export PATH=/home/arch/.local/share/gem/ruby/3.3.0/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/arch/.local/share/gem/ruby/3.3.0/bin:/home/arch/.local/share/gem/ruby/3.3.0/bin/rails
export PATH="/home/arch/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/arch/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

