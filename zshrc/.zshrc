export PATH="$PATH:/opt/nvim-linux64/bin"
export EDITOR="/opt/nvim-linux64/bin/nvim"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wivieira/.zshrc'

autoload -Uz compinit
compinit

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git tmux zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search vi-mode)
ZSH_TMUX_AUTOSTART=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
bindkey -v
source $ZSH/oh-my-zsh.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/wivieira/.sdkman"
[[ -s "/home/wivieira/.sdkman/bin/sdkman-init.sh" ]] && source "/home/wivieira/.sdkman/bin/sdkman-init.sh"

# aliases
alias la=tree
alias cat=bat

# Git
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
