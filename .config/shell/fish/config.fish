# Set the editor
set -x VISUAL nvim
set -x EDITOR nvim

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
alias pm='pacman -Q | grep'

set -U fish_autosuggestions yes
set -U fish_key_bindings fish_vi_key_bindings

# Custom prompt
function fish_prompt
    set_color cyan
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' ❯ '
end

# Hide welcome message
set fish_greeting

# Start Hyprland
set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec Hyprland

