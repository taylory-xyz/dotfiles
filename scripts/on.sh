#!/bin/bash

sudo pacman -Syu
yay

sudo npm update -g

cd ~/learn
	git pull && echo "learn updated"
	git push

cd ~/.dotfiles
	git pull && echo "dotfiles updated"
	git push
