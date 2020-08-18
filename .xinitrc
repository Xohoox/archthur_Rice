#!/bin/sh

# Variables
#export PATH=$PATH:$HOME/.scripts
#export EDITOR="vim"
#export TERMINAL="st"
#export BROWSER="chromium"
#export TERM="st-256color"

# Alias
#alias h='cd ~'
#alias vi3='vim ~/.config/i3/config'
#alias vrc='vim ~/.vimrc'
#alias la='ls -a'
#alias ls='ls --color=auto'
#alias v='vim'
#alias db-start='sudo systemctl start postgresql'
#alias db-connect='psql -h localhost -d versand25'
#alias db-stop='sudo systemctl stop postgresql'
#alias config='git --git-dir=$HOME/repos/archthur_rice.git/ --work-tree=$HOME'

# 
setxkbmap -layout de
xcompmgr &
xwallpaper --focus bilder/wallpaper/wall.jpg
sxhkd &
#dwmbar &

# Start dwm
exec startdwm
