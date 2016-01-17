alias git="/usr/local/bin/git"
alias g="git"
alias gco="git checkout"
alias gci="git commit"
alias gu="git up"
alias gp="git put"
alias gr="git rebase origin/master"
alias gri="git rebase -i origin/master"
alias gccm="git log -1 --pretty=%B | pbcopy"  # git copy commit message
alias gclean="git branch --merged | grep -v '^*' | xargs git branch -D"

alias rspec="bundle exec rspec"
alias rails="bundle exec rails"

alias wn="mvim ~/Documents/Evrone/time-tracking.org"
alias handgun="ping -c1 10.88.18.7 && HANDGUN_ADDRESS=10.40.130.65 ~/work/nptv/handgun/bin/run"
