#
# ~/.bash_profile
#
#[[ -f ~/.bashrc ]] && . ~/.bashrc
#
# variables
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"
export PATH=$PATH:$HOME/.scripts
export TERM="st-256color"
#
## Alias
alias h='cd ~'
alias vi3='nvim ~/.config/i3/config'
alias vrc='nvim ~/.vimrc'
alias ls='ls --color=auto'
alias la='ls -a'
alias v='nvim'
alias db-start='sudo systemctl start postgresql'
alias db-connect='psql -h localhost -d versand25'
alias db-stop='sudo systemctl stop postgresql'
alias config='git --git-dir=$HOME/repos/archthur_rice.git/ --work-tree=$HOME'


#Wenn noch nicht gestartet, i3 starten
if [[ "$(tty)" = "/dev/tty1" ]]; then
	#pgrep i3 || startx
	#startx
	exec startx
fi
