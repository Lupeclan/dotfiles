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
alias glco="git rev-parse HEAD"

grlco() {
  git revert "$(git rev-parse HEAD)"
}

glcocp() {
  git rev-parse HEAD | tr -d '\n' | copy
}

unalias gpf
compdef g="git"

# Misc
alias reload="exec $SHELL -l"
alias cls="clear"

alert() {
  shopt -s expand_aliases 2>/dev/null

  if ! command -v osascript >/dev/null 2>&1; then
      echo "Warning: osascript not found (not on macOS?), skipping notification" >&2
      eval "$*"
      return $?
  fi

  local now=$(date +%s)
  eval "$*"
  local exit_code=$?
  local cmd_str=$(echo "$*" | sed 's/"/\\"/g')
  if [ $exit_code -eq 0 ]; then
      osascript -e "display notification \"Finished in $(( $(date +%s) - now )) seconds\" with title \"Finished running $cmd_str\""
  else
      osascript -e "display notification \"Failed in $(( $(date +%s) - now )) seconds\" with title \"Failed to run $cmd_str\""
  fi

  return $exit_code
}

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
