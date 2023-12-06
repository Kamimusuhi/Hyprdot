# Enable bash-completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Aliases
alias in='sudo pacman -S'
alias un='sudo pacman -Rns'
alias prun='pacman -Qtdq | sudo pacman -Rns -'
alias up='sudo pacman -Syu'
alias vi='nvim'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias ll='ls -lah'
alias lf='ls -1A | fzf'
alias gh='history | grep'
alias fm='thunar'

# Your prompt configuration
export PS1='\n\[\e[36m\] \D{%Y-%m-%d %H:%M:%S} \[\e[35m\]⌚  \h \[\e[36m\]in \[\e[32m\]\w\n\[\e[37m\]\[\e[36m\]○ \[\e[32m\]→\[\033[00m\] '

shopt -s autocd
set -o vi 
