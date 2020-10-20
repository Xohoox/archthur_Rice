# load enviroment variables
[ -f ~/.config/rice/envvars.sh ] && source ~/.config/rice/envvars.sh

# start X
if [[ "$(tty)" = "/dev/tty1" ]]; then
	exec startx $XINITRC
fi
