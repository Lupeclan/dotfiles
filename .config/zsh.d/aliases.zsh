# Path traversing
alias ..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'
alias 4..='cd ../../../..'
alias 5..='cd ../../../../..'
alias cd..="cd .."

# AWS
alias aws-l="aws sso login"

# Git
alias g="git"
alias gpl="git pull"
alias gplr="git pull --rebase"
alias gdh="git diff HEAD"
alias gfp="git fetch --prune"
alias gcbr="git branch --show-current"
alias gbrl="git branch -l"
alias gcbrcp="git branch --show-current | tr -d '\n' | copy"
alias gbrda="git branch | grep -v 'main\|master' | xargs git branch -D"
alias gfep="git fetch --prune"
alias gmm="git merge main"
alias gchm="git checkout main"
alias gsyn="git pull && git fetch --prune"
unalias gpf
compdef g="git"

# Misc
alias reload="exec $SHELL -l"
alias cls="clear"

# tofu
alias tf="tofu"
alias tfi="tofu init"
alias tfiu="tofu init --upgrade"
alias tfv="tofu validate"
alias tfp="tofu plan"
alias tfa="tofu apply"
alias tfd="tofu destroy"
alias tfw="tofu workspace"
alias tfsl="tofu state list"
alias tfwl="tofu workspace list"
alias tfws="tofu workspace select --or-create=true"
alias tfwn="tofu workspace new"
alias tfwd="tofu workspace delete"

# Docker
alias d="docker"
alias d-stop-all="docker ps -aq | xargs docker stop | xargs docker rm"

# Kubernetes
alias k8="kubectl"
compdef _kubectl k8
