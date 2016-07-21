#rails commands
alias be="bundle exec"
alias ber="bundle exec rake"
alias berdb:m="bundle exec rake db:migrate"
alias berdb:r="bundle exec rake db:rollback"
alias berr="bundle exec rake routes"
alias berrg="bundle exec rake routes | grep"
alias beg="bundle exec guard -w spec"
alias btbeg="BYEBUG=true bundle exec guard -w spec"
alias rs="rails server"
alias rc="rails console"
alias rgm="rails g migration"

#git aliases
alias gp="git pull --rebase"
alias gpo="git push origin"
alias gpom="git push origin master"
alias gcam="git commit -am"
alias gcm="git commit -m"
alias gfgr="git fetch && git rebase"
alias gaa="git add -A"
alias gco="git co"
alias gcom="git co master"

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
