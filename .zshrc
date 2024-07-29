HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -e
zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit
compinit

alias config="/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}"
alias upgrade='sudo pacman -Sy --needed archlinux-keyring && yay -Su'

eval "$(starship init zsh)"
