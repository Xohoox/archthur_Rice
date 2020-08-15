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

# ZSH Settings
bindkey -v
bindkey '^e' edit-command-line
# use the vi navigation keys (hjkl) besides cursor keys in menu completion
bindkey -M menuselect 'h' vi-backward-char        # left
bindkey -M menuselect 'k' vi-up-line-or-history   # up
bindkey -M menuselect 'l' vi-forward-char         # right
bindkey -M menuselect 'j' vi-down-line-or-history # bottom

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
   	RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

## Auto Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# zsh parameter completion for the dotnet CLI

_dotnet_zsh_complete() 
{
  local completions=("$(dotnet complete "$words")")
  reply=( "${(ps:\n:)completions}" )
}
compctl -K _dotnet_zsh_complete dotnet

# Prompt
#source ~/repos/powerlevel10k/powerlevel10k.zsh-theme
#source ~/Repos/agnoster-zsh-theme/agnoster.zsh-theme

# syntax highlighting
source /home/fynn/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Setup fzf
export FZF_DEFAULT_OPS="--extended"
if [[ ! "$PATH" == */home/fynn/repos/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/fynn/repos/fzf/bin"
fi

## Auto-completion
[[ $- == *i* ]] && source "/home/fynn/repos/fzf/shell/completion.zsh" 2> /dev/null

## Key bindings
source "/home/fynn/repos/fzf/shell/key-bindings.zsh"
source ~/.scripts/fuzzy
source ~/repos/git-flow-completion/git-flow-completion.plugin.zsh
