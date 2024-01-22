function confirm {
  printf "$1 [y/n] : "
  read -r opt
  echo
  [[ $opt =~ ^[Yy]$ ]]
  return
}

function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk,mainline,default}; do
    if command git show-ref --quiet --verify $ref; then
      echo ${ref:t}
      return
    fi
  done
  echo master
}

alias gco='git checkout'
alias gcob='git checkout -b'
alias gsb='git status --short --branch'
alias grst='git restore --staged'
alias gl='git pull --all --tags --prune --rebase'
alias gd='git diff'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit --sign --message '
alias gwip='git add . && git commit --no-verify -m "wip"'
alias gc!='git commit --amend'
alias gp='git push'
alias gpf='git push --force'
alias grba='confirm "Abort rebase?" && git rebase --abort'
alias grbc='git rebase --continue'
alias gbdall='confirm "Purge merged branches?" && (git branch | grep "^[^*]" | xargs git branch --delete)'
alias gbDall='confirm "Purge all branches?" && (git branch | grep "[^*]" | xargs git branch --delete --force)'
alias grbom='git rebase $(git_main_branch)'
alias grh='git reset --hard'
alias gsta='git stash'
alias gstp='git stash pop'