export ZSH="/Users/melvin/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GPG_TTY=$(tty)
export ELASTICSEARCH_URL=http://localhost:9200
export GOOGLE_APPLICATION_CREDENTIALS="/Users/melvin/Downloads/idexx-310819-fec222831c1e.json"

export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias cov="open coverage/lcov-report/index.html"
alias ga="git add ."
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gl="git log --oneline"
alias gln="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gmd="git fetch --all && git merge origin/develop"
alias gmm="git fetch --all && git merge origin/main"
alias grm="git fetch --all && git rebase origin/main"
alias gp="git push --no-verify"
alias gr1="git reset HEAD~1"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gs="git status"
alias pr="gh pr create -w"
alias update="git fetch && git rebase origin/master"
alias wip="git add . && git commit -m 'wip' -n"
alias p="pnpm"
alias gistory="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# bun completions
[ -s "/Users/melvinvermeer/.bun/_bun" ] && source "/Users/melvinvermeer/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/melvinvermeer/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
