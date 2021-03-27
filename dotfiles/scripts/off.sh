#!/bin/bash

echo "running shutdown script..."

fmtdate="$(date +%m/%d)"
message="[${fmtdate}]"

cd ~/learn
	git add -A
	git status
	read -p "commit message for learn: " learninput
	learnmsg="${message} ${learninput}"
	git commit -m "${learnmsg}" && echo "learn commited: ${learnmsg}"
	git push || echo "learn cannot be pushed"
sleep 2

cd ~/.dotfiles
	echo "pacman: " > ~/.dotfiles/packages.txt
	pacman -Qe >> ~/.dotfiles/packages.txt
	echo -e "\nnpm: " >> ~/.dotfiles/packages.txt
	npm list -g --depth=0 >> ~/.dotfiles/packages.txt
	echo -e "\npip: " >> ~/.dotfiles/packages.txt
	pip list --not-required >> ~/.dotfiles/packages.txt
	git add -A
	git status
	read -p "commit message for dotfiles: " dotinput
	dotfilesmsg="${message} ${dotinput}"
	git commit -m "${dotfilesmsg}" && echo "dotfiles commited: ${dotfilesmsg}"
	git push || echo "dotfiles cannot be pushed"
sleep 2

sync

echo '5' & sleep 1
echo '4' & sleep 1
echo '3' & sleep 1
echo '2' & sleep 1
echo '1' & sleep 1

shutdown now
