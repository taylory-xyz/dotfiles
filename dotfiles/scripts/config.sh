#!/bin/bash

###
mv ~/dotfiles ~/.dotfiles
echo "running setup script..."

### set up bash_profile
cp ~/.dotfiles/.bash_profile ~/.bash_profile && echo 'bash_profile ==> success!' || echo 'bash_profile ==> failed :('

### set up bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc && echo 'bashrc ==> success!' || echo 'fish ==> failed :('

### set up fish
mkdir ~/.config/fish && ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish && echo 'fish ==> success!' || echo 'fish ==> failed :('

### set up vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc && echo 'vimrc ==> success!' || echo 'vim ==> failed :('

### set up emacs
ln -s ~/.dotfiles/.emacs ~/.emacs && mkdir .emacs.d && ln -s ~/.dotfiles/lisp ~/.emacsd/lisp && echo 'emacs ==> success!' || echo 'emacs ==> failed :('

### set up i3
ln -s ~/.dotfiles/i3/config ~/.config/i3/config && echo 'i3 ==> success!' || echo 'i3 ==> failed :('

### set up terminator
mkdir ~/.config/terminator && ln -s ~/.dotfiles/terminator/config ~/.config/terminator/config && echo 'terminator ==> success!' || echo 'terminator ==> failed :('

### set up alacritty
mkdir ~/.config/alacritty && ln -s ~/.dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml && echo 'alacritty ==> success!' || echo 'alacritty ==> failed :('

### set up scripts
ln -s ~/.dotfiles/scripts/on.sh ~/on.sh && chmod +x ~/.dotfiles/scripts/on.sh && echo 'script: on ==> success!' || echo 'script: on ==> failed :('
ln -s ~/.dotfiles/scripts/off.sh ~/off.sh && chmod +x ~/.dotfiles/scripts/off.sh && echo 'script: off ==> success!' || echo 'script: off ==> failed :('
ln -s ~/.dotfiles/scripts/texmk.sh ~/texmk.sh && chmod +x ~/.dotfiles/scripts/texmk.sh && echo 'script: texmk ==> success!' || echo 'script: texmk ==> failed :('
ln -s ~/.dotfiles/scripts/create.sh ~/create.sh && chmod +x ~/.dotfiles/scripts/create.sh && echo 'script: create ==> sucess!' || echo 'script: crate ==> failed :('

ln -s ~/.dotfiles/scripts/scanned_pdf.sh && chmod +x ~/.dotfiles/scripts/scanned_pdf.sh && echo 'script: scanned_pdf ==> success!' || echo 'script: scanned_pdf ==> failed :('

### set up git
git config --global user.name "taylor y" && git config --global user.email "64106592+taylory-xyz@users.noreply.github.com" && echo 'git ==> success!' || echo 'git ==> failed :('

###
# ssh-keygen -t ed25519 -C "email"
# ssh-add ~/.ssh/id_ed25519
