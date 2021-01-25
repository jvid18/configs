## Aliases

# ls
alias l="ls $1 -Alh"

function neovim() {
	if [ -z "$1" ]; then
		nvim ./
	else
		nvim $1
	fi
}
# nvim
alias v=neovim

# Git
alias gcl="git clone"
alias gst="git status"
alias gl="ORG${1:-"origin"}; git pull $ORG"
alias gp="git push"
alias gd="git diff | subl"
alias gc="git commit -m $1"
alias gac="git add .; git commit -m $1"
alias ga="git add ."

# Zathura PDF's
alias zt="nohup zathura $i &"

# Test
alias blah="ORG=${1:-"origin"}; echo $ORG"
