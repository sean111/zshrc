#Docker
alias d='docker'
alias dup='docker up'
alias dk='docker kill'
alias dkill='dk'
alias dkilla='dk $(docker ps -q)'

#Docker Compose
alias dc='docker-compose'

alias dcu='dc up'
alias dck='dc kill'
alias dcb='dc build'
alias dcrm='dc rm'
alias dcrb='dcrm --force && dcb --pull --no-cache && dcu --force-recreate'
alias dprune='d container prune --force && d image prune --force && d container prune --force'
