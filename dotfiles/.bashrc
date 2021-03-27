# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --color=auto -alF'
alias list='\ls'
alias tree='exa --tree'
alias add='git add -A && git status'
alias df='df -h /dev/sda2'
alias ping='ping -c 1'
alias off='~/./off.sh'
alias texmk='~/./texmk.sh'
alias create='~/./create.sh'

setxkbmap -option caps:escape_shifted_capslock

export PS1="\n\[$(tput setaf 5)\]\A \[$(tput setaf 1)\][\u] \n\[$(tput setaf 6)\][\w] \$(tput sgr0)\]\n"

## backup command: (from /home)
##		sudo zip -r sdb/[date].zip taylor/* -r

dl-music() {
	youtube-dl -x --audio-format mp3 "$1"
}

tldr() {
	curl cheat.sh/$1
}

# backup: dd if=/dev/disk | gzip > path.gz
# recovery: gzip -dc path.gz | dd of=/dev/disk

export HOME=/home/taylor
export EDITOR=vim
eval "$(thefuck --alias)"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
