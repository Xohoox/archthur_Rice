#!/bin/sh

# Alias
alias h='cd ~'
alias cdwm='cd ~/repos/dwm'
alias vrc='nvim ~/.config/nvim/init.vim'
alias vzrc='nvim ~/.config/zsh/.zshrc'
alias ls='ls --color=auto'
alias v='nvim'
alias db-start='sudo systemctl start postgresql'
alias db-connect='psql -h localhost -d versand25'
alias db-stop='sudo systemctl stop postgresql'
alias c='git --git-dir=$HOME/repos/archthur_Rice.git/ --work-tree=$HOME'
alias dwm-clean='cd ~/repos/dwm && make clean && rm -f config.h && rm -f tags && git reset --hard origin/master'
alias myip='curl https://checkipv4.dedyn.io/'
alias myip6='curl https://checkipv6.dedyn.io/'
alias dnb='dotnet build'
alias dnr='dotnet run'
alias speed='speedtest-cli'
alias sc='source ~/.zshrc'
alias wifi='sudo systemctl start wpa_supplicant@wlo1.service && sleep 5 && sudo dhcpcd wlo1'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget/wget-hsts"'
alias l="lsd"
alias la="lsd -a"
alias sudo="sudo "
alias p="git --git-dir=$HOME/.local/share/pass/.git --work-tree=$HOME/.local/share/pass"
