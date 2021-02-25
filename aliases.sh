## Debian
alias s="sudo"
alias sa="sudo apt-get"
alias sud="sudo apt-get update"
alias sug="sudo apt-get upgrade"
alias sar"sudo apt-get --purge remove"
alias e="exit"

## ls
alias l="ls -Alh"

## rm
alias rmd="rm -rf"

## Nvim
alias v=openNvim

function openNvim() {
	if [ $# -eq 0 ]; then
		nvim ./
	else
		nvim $1
	fi
}

## Git
alias gi="git init"
alias gst="git status"
alias gcl="git clone"
alias gl="git pull"
alias gp="git push"
alias gd="git diff | subl"
alias ga="git add ."
alias gae="git add"
alias gc="git commit -m"
alias gra=addRemoteBranch
alias grs=setRemoteBranch

function setRemoteBranch() {
	if [ -z "$2" ]; then
		git remote set-url origin $1
	else
		git remote set-url $1 $2
	fi
}

function addRemoteBranch() {
	if [ -z "$2" ]; then
		git remote add origin $1
	else
		git remote add $1 $2
	fi
}

## Zathura PDFs
alias zt=openZathura

function openZathura() {
	nohup zathura $1 &
}
