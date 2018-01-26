#!/bin/sh

# Dpkg installation
apt install arandr i3-blocks i3 vim git

# Vim setup
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Font setup
mkdir ~/.font

git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
cp YosemiteSanFranciscoFont/*.ttf ~/.font
rm -rf YosemiteSanFranciscoFont

git clone https://github.com/FortAwesome/Font-Awesome.git
cp Font-Awesome/fonts/*.ttf ~/.font
rm -rf Font-Awesome


