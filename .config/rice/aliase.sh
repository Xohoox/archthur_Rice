#!/bin/sh

# Alias
alias h='cd ~'
alias cdwm='cd ~/repos/dwm'
alias vrc='nvim ~/.config/nvim/init.vim'
alias vzrc='nvim ~/.zshrc'
alias la='ls -a'
alias ls='ls --color=auto'
alias v='nvim'
alias db-start='sudo systemctl start postgresql'
alias db-connect='psql -h localhost -d versand25'
alias db-stop='sudo systemctl stop postgresql'
alias c='git --git-dir=$HOME/repos/archthur_rice.git/ --work-tree=$HOME'
alias dwm-clean='cd ~/repos/dwm && make clean && rm -f config.h && rm -f tags && git reset --hard origin/master'
alias myip='curl https://checkipv4.dedyn.io/'
alias myip6='curl https://checkipv6.dedyn.io/'
alias dnb='dotnet build'
alias dnr='dotnet run'
alias speed='speedtest-cli'
alias sc='source ~/.zshrc'
