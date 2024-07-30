HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt beep

bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H'	  backward-kill-word
bindkey '^[[3;5~' kill-word
bindkey -e

zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit
compinit

alias config="/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}"
alias upgrade='sudo pacman -Sy --needed archlinux-keyring && yay -Su'

eval "$(starship init zsh)"
