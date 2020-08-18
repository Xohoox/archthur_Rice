#!/bin/sh

setxkbmap -layout de
xwallpaper --focus bilder/wallpaper/wall.jpg
xcompmgr &
sxhkd &

# Start dwm
exec startdwm
