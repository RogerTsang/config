#!/bin/sh

# Dpkg installation
apt install arandr i3blocks i3 vim git feh lm-sensors compton

# Vim setup
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Git Bash
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# Font setup
mkdir ~/.fonts

git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
cp YosemiteSanFranciscoFont/*.ttf ~/.fonts
rm -rf YosemiteSanFranciscoFont

git clone https://github.com/FortAwesome/Font-Awesome.git
cp Font-Awesome/fonts/*.ttf ~/.fonts
rm -rf Font-Awesome

# Apply Changes
mkdir ~/.config
rm -rf ~/.config/i3
cp -r i3 ~/.config/i3
cp -r bash-git-prompt/themes ~/.bash-git-prompt/themes
cp -r .vimrc ~/.vimrc
cp -r .gitconfig ~/.gitconfig

# Run Vim
vim +PluginInstall +qall
