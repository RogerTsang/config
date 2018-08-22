#!/bin/sh

# Create a temporary folder
TEMP_DIR="./temp"
mkdir $TEMP_DIR
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
sudo dpkg -i ripgrep_0.8.1_amd64.deb
rm ripgrep_0.8.1_amd64.deb

# Dpkg installation
sudo apt install arandr i3blocks i3 neovim git feh lm-sensors compton

# Vim setup
DEIN_DIR="$HOME/.vim/dein"
mkdir -p $DEIN_DIR
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh $DEIN_DIR
rm installer.sh

# Git Bash
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

# Apply Changes
rm -rf "$HOME/.config/i3"
rm -rf "$HOME/.config/nvim"

mkdir -p "$HOME/.config/i3"
cp -r i3 "$HOME/.config/i3"

mkdir -p "$HOME/.config/nvim"
cp ./nvim/init.vim "$HOME/.config/nvim/init.vim"

cp -r bash-git-prompt/themes "$HOME/.bash-git-prompt/themes"
cp -r .gitconfig "$HOME/.gitconfig"

# Clear Temp Folder
rm -rf $TEMP_DIR
