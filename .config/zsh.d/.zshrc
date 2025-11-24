source "$HOME/.config/zsh.d/aliases.zsh"

export SOPS_EDITOR="vim"
export EDITOR="code"

eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
source <(kubectl completion zsh)

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

cpyvenv() {
    if [[ ! -d venv ]]; then
        echo "Creating virtual environment in $(pwd)/venv"
        python3 -m venv venv
    fi

    echo "Activating virtual environment in $(pwd)/venv"
    source venv/bin/activate

    echo "python3: $(which python3)"
}