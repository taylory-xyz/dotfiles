alias ls='exa --color=auto -alF'
alias list='\ls --color=auto'
alias tree='exa --tree'
alias add='git add -A && git status && git branch-status'
alias df='df -h /dev/sda2'
alias ping='ping -c 1'
alias off='~/.dotfiles/scripts/./off.sh'
alias on='~/.dotfiles/scripts/./on.sh'
alias texmk='~/.dotfiles/scripts/./texmk.sh'
alias create='~/.dotfiles/scripts/./create.sh'
alias split_pdf='~/.dotfiles/scripts/./split_pdf.sh'
alias commit='~/.dotfiles/scripts/./commit.sh'
alias pacman='sudo pacman'
alias clone='git clone'
alias sqlite='sqlite3'
alias fonts='fc-list'
alias sql='sudo -iu postgres'
alias :q='cd ..'
alias :x='cd ..'
# sudo chown -R 1000:998 "/root/.npm"
alias chown='sudo chown'

dl-music() {
	youtube-dl -x --audio-format mp3 "$1" -o "%(title)s - %(uploader)s.%(ext)s"
}

tldr() {
	curl cheat.sh/$1
}

search() {
	pacman -Ss $1
	yay -Ss $1
}

systemctl-begin() {
	systemctl enable $1 && systemctl start $1
}

git-clean-history() {
	git checkout --orphan newBranch
	git add -A
	git commit -m "$(date): clean"
	git branch -D main
	git branch -m main
	echo 'remember: "git push -f origin main" and "git gc --aggressive --prune=all"'
}
