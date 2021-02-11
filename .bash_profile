## Funcions
function neovim() {
	if [ -z "$1" ]; then
		nvim ./
	else
		nvim $1
	fi
};

function setRemoteBranch() {
	if [ -z "$2" ]; then
		git remote set-url origin $1
	else
		git remote set-url $1 $2
	fi
};

funcion addRemoteBranch() {
	if [ -z "$2" ]; then
		git remote add origin $1
	else
		git remote add $1 $2
	fi 
}

## Aliases

# ls
alias l="ls $1 -Alh"

# rm
alias rmf="rm -rf"

# nvim
alias v=neovim

# Git
alias gi="git init"
alias gcl="git clone"
alias gst="git status"
alias gl="ORG${1:-"origin"}; git pull $ORG"
alias gp="git push"
alias gd="git diff | subl"
alias gc="git commit -m"
alias gac="git add .; git commit -m $1"
alias ga="git add ."
alias gae="git add"
alias gra=addRemoteBranch
alias grs=setRemoteBranch

# Zathura PDF's
alias zt="nohup zathura $i &"

# Exit
alias e="exit"

# Test
alias blah="ORG=${1:-"origin"}; echo $ORG"
