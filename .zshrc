export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="crunch"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    zsh-autosuggestions
    fzf
)

autoload -Uz compinit && compinit
source $ZSH/oh-my-zsh.sh

# Dotfiles repo config
alias gitdf='git --git-dir=$HOME/.config/dotfiles.git --work-tree=$HOME'
for f in $HOME/.config/*.d/.*rc; do source $f; done
[[ -d $HOME/bin ]] && export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$HOME/.cargo/bin:$PATH"
# Source aliases that don't belong in dotfile repo
source $HOME/.aliases

# SWC dotfiles
## Aliases
swc_df_path="$HOME/gr/software-cloud-dotfiles"
if [[ -d "$swc_df_path" && -d "$swc_df_path/aliases" ]]; then
  for a in $(ls $swc_df_path/aliases/ | egrep -i "^.*\.(sh|zsh)$"); do
    source "$swc_df_path/aliases/$a"
  done
fi

## Bin
if [[ -d "$swc_df_path" && -d "$swc_df_path/bin" ]]; then
  export PATH="$swc_df_path/bin:$PATH"
fi
