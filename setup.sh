#!/bin/sh

# Create a temporary folder
TEMP_DIR="./temp"
mkdir $TEMP_DIR
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
sudo dpkg -i ripgrep_0.8.1_amd64.deb

# Dpkg installation
sudo apt install arandr i3blocks i3 neovim git feh lm-sensors compton

# Vim setup
DEIN_DIR="~/.vim/dein"
mkdir -p $DEIN_DIR
git clone https://github.com/Shougo/dein.vim $DEIN_DIR --depth=1

# Git Bash
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# Font setup
FONT_DIR="~/.fonts"
mkdir -p $FONT_DIR

mkdir "$TEMP_DIR/yose"
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git "$TEMP_DIR/yose" --depth=1
cp yose/*.ttf $FONT_DIR

mkdir "$TEMP_DIR/awesome"
git clone https://github.com/FortAwesome/Font-Awesome.git "$TEMP_DIR/awesome" --depth=1
cp awesome/use-on-desktop/*.otf $FONT_DIR

# Apply Changes
mkdir ~/.config
rm -rf ~/.config/i3
cp -r i3 ~/.config/i3
cp -r bash-git-prompt/themes ~/.bash-git-prompt/themes
cp ./nvim/init.vim ~/.config/nvim/
cp -r .gitconfig ~/.gitconfig

# Clear Temp Folder
rm -rf $TEMP_DIR
