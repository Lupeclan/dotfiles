export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="crunch"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    zsh-autosuggestions
)

autoload -Uz compinit && compinit
source $ZSH/oh-my-zsh.sh

# Dotfiles repo config
alias gitdf='git --git-dir=$HOME/.config/dotfiles.git --work-tree=$HOME'
for f in $HOME/.config/*.d/.*rc; do source $f; done
[[ -d $HOME/bin ]] && export PATH="$HOME/bin:$PATH"

# Source aliases that don't belong in dotfile repo
source $HOME/.aliases
