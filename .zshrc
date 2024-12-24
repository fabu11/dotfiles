
export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"

# Hist
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

fpath+=($HOME/.zsh/pure)
autoload -Uz promptinit
promptinit
prompt pure

#alias
alias zshrc="nvim ~/.zshrc && source ~/.zshrc"
alias ls="eza"
alias tree="eza --tree"
alias ll="eza -all --long --header --icons --grid"

# sources
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ...
fpath+=~/.zfunc; autoload -Uz compinit; compinit
