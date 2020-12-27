# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias
[ -f ~/.config/rice/aliase.sh ] && source ~/.config/rice/aliase.sh
[ -f ~/.config/rice/envvars.sh ] && source ~/.config/rice/envvars.sh

# ZSH Settings
autoload -z edit-command-line
zle -N edit-command-line
bindkey -v
bindkey '^e' edit-command-line
setopt share_history
setopt inc_append_history
setopt histignorealldups

# use the vi navigation keys (hjkl) besides cursor keys in menu completion
zstyle ':completion:*' menu select
zmodload zsh/complist
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

# Prompt
autoload -U colors && colors
source ~/repos/zsh-git-prompt/zshrc.sh
PROMPT='%n%f@%F{blue}%B%m%f %~%b%f $(git_super_status) %# '


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

# syntax highlighting
[ -f ~/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source ~/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Setup fzf
export FZF_DEFAULT_OPS="--extended"
if [[ ! "$PATH" == */home/fynn/repos/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/fynn/repos/fzf/bin"
fi

## Auto-completion
[[ $- == *i* ]] && source "/home/fynn/repos/fzf/shell/completion.zsh" 2> /dev/null

## Key bindings
[ -f ~/repos/fzf/shell/key-bindings.zsh ] && source ~/repos/fzf/shell/key-bindings.zsh
[ -f ~/.scripts/fuzzy ] && source ~/.scripts/fuzzy
[ -f ~/repos/git-flow-completion/git-flow-completion.plugin.zsh ] && source ~/repos/git-flow-completion/git-flow-completion.plugin.zsh
