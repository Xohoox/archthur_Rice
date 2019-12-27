# Created by newuser for 5.6.2
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Add .scripts to path
#export PATH=$PATH:$HOME/.scripts

# Alias
alias h='cd ~'
#alias vi3='vim ~/.config/i3/config'
alias vrc='vim ~/.vimrc'
alias la='ls -a'
alias ls='ls --color=auto'
alias v='vim'
alias db-start='sudo systemctl start postgresql'
alias db-connect='psql -h localhost -d versand25'
alias db-stop='sudo systemctl stop postgresql'
alias config='git --git-dir=$HOME/repos/archthur_rice.git/ --work-tree=$HOME'
alias dwm-clean='make clean && rm -f config.h && git reset --hard origin/master'

# Variables
#export EDITOR="vim"
#export TERMINAL="st"
#export BROWSER="chromium"
#export TERM="xterm-256color"

# ZSH Settings

## Auto Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# Prompt
#source ~/repos/powerlevel10k/powerlevel10k.zsh-theme
#source ~/Repos/agnoster-zsh-theme/agnoster.zsh-theme
