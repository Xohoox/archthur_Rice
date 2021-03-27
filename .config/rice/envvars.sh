#!/bin/sh

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

export PATH=$PATH:$HOME/.scripts
export TERM="st-256color"

# xdg base directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DOCUMENTS_DIR="$HOME/dokumente"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_PICTURES_DIR="$HOME/bilder"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_MUSIC_DIR="$HOME/musik"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="-"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"

export HISTFILESIZE=1000000
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
export HIST_IGNORE_DUPS
