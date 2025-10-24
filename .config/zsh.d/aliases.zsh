# AWS
alias aws-l="aws sso login"

# Git
alias g="git"
alias gpl="git pull"
alias gdh="git diff HEAD"
alias gfp="git fetch --prune"
unalias gpf
compdef g="git"

# Misc
alias reload="exec $SHELL -l"

# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfiu="terraform init --upgrade"
alias tfv="terraform validate"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfd="terraform destroy"

# Docker
alias d="docker"
alias d-stop-all="docker ps -aq | xargs docker stop | xargs docker rm"

# Kubernetes
alias k8="kubectl"
compdef _kubectl k8