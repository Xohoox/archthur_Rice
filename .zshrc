# Created by newuser for 5.6.2
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Add .scripts to path
#export PATH=$PATH:$HOME/.scripts
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Alias
alias h='cd ~'
alias vrc='vim ~/.vimrc'
alias vzrc='vim ~/.zshrc'
alias la='ls -a'
alias ls='ls --color=auto'
alias v='vim'
alias db-start='sudo systemctl start postgresql'
alias db-connect='psql -h localhost -d versand25'
alias db-stop='sudo systemctl stop postgresql'
alias config='git --git-dir=$HOME/repos/archthur_rice.git/ --work-tree=$HOME'
alias dwm-clean='make clean && rm -f config.h && git reset --hard origin/master'

# ZSH Settings

## Auto Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# Prompt
#source ~/repos/powerlevel10k/powerlevel10k.zsh-theme
#source ~/Repos/agnoster-zsh-theme/agnoster.zsh-theme
