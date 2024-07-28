HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -e
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit

alias config='/usr/bin/git --git-dir=/home/user/.cfg/ --work-tree=/home/user'
alias upgrade='sudo pacman -Sy --needed archlinux-keyring && yay -Syu'

eval "$(starship init zsh)"
