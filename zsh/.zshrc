# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$PATH:$HOME/.local/bin"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## History
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=500
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

## Auto-Suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Initialize Programming Languages

path=('/Users/bdgar/.juliaup/bin' $path)
export PATH

path=('/Applications/Stata/StataMP.app/Contents/MacOS/' $path)
export PATH

## Initialize fzf (search)

FZF_ALT_C_COMMAND= source <(fzf --zsh)

## Eza (better ls)
alias ls="eza -a --icons=always"
alias la="ls -la"

## Zoxide (better cd)
eval "$(zoxide init zsh)"
alias cd="z"
alias cdoc="z ~/Documents"

## Neovim
alias vim="nvim"

## Open an Application
alias app="open -a"

## Higher Directories
alias b="cd .."
alias bb="cd ../.."
alias lsb="ls .."
alias lsbb="ls ../.."

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/bdgar/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/bdgar/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/bdgar/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/bdgar/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

### Automatically Start tmux ###
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session -n "Main" && exit;}

