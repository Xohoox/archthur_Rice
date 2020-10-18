#!/bin/sh

setxkbmap -layout de
setxkbmap -option caps:escape
xwallpaper --focus bilder/wallpaper/wall.jpg
xcompmgr &
sxhkd &

# Start dwm
exec startdwm
