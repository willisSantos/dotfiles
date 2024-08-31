export PATH="$PATH:/opt/nvim-linux64/bin"
export EDITOR="/opt/nvim-linux64/bin/nvim"
export PATH="$PATH:/home/wivieira/.local/share/jdtls/bin"
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

plugins=(git tmux)
ZSH_TMUX_AUTOSTART=true
source $ZSH/oh-my-zsh.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/wivieira/.sdkman"
[[ -s "/home/wivieira/.sdkman/bin/sdkman-init.sh" ]] && source "/home/wivieira/.sdkman/bin/sdkman-init.sh"
