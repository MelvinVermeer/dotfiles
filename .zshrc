export ZSH="/Users/melvin/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GPG_TTY=$(tty)
export ELASTICSEARCH_URL=http://localhost:9200
export GOOGLE_APPLICATION_CREDENTIALS="/Users/melvin/Downloads/idexx-310819-fec222831c1e.json"

export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias gco="git checkout"
alias gs="git status"
alias pr="gh pr checkout"
alias gc="git commit -m"
alias gp="git push"
alias ga="git add ."
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gca="git commit --amend --no-edit"
alias gcp="git cherry-pick"
alias gln="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias wip="git add . && git commit -m 'wip' -n"
alias gl="git log --oneline"
alias update="git fetch && git rebase origin/master"
alias lego="nx run lego-shared-components:storybook"