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
alias gdh="git diff HEAD"
alias gfp="git fetch --prune"
alias gcbr="git branch --show-current"
alias gbrl="git branch -l"
alias gcbrcp="git branch --show-current | tr -d '\n' | copy"
alias gbrda="git branch | grep -v 'main\|master' | xargs git branch -D"
alias gfep="git fetch --prune"
unalias gpf
compdef g="git"

# Misc
alias reload="exec $SHELL -l"
alias cls="clear"

# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfiu="terraform init --upgrade"
alias tfv="terraform validate"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfd="terraform destroy"
alias tfw="terraform workspace"
alias tfsl="terraform state list"
alias tfwl="terraform workspace list"
alias tfws="terraform workspace select --or-create=true"
alias tfwn="terraform workspace new"
alias tfwd="terraform workspace delete"

# Docker
alias d="docker"
alias d-stop-all="docker ps -aq | xargs docker stop | xargs docker rm"

# Kubernetes
alias k8="kubectl"
compdef _kubectl k8
