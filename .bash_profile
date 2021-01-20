## Aliases

# ls
alias l="ls $1 -Alh"

# nvim
alias v="nvim $1"

# Git
alias gcl="git clone"
alias gst="git status"
alias gl="ORG${1:-"origin"}; git pull $ORG"
alias gp="ORG=${1:-"origin"}; git push $ORG HEAD"
alias gd="git diff | subl"
alias gc="git commit -m $1"
alias gac="git add .; git commit $1"
alias ga="git add ."

# Test
alias blah="ORG=${1:-"origin"}; echo $ORG"
