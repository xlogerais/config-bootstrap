#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y coreutils grep less tar tree
sudo apt install -y man manpages-fr manpages-fr-extra
sudo apt install -y bash zsh fish
sudo apt install -y screen tmux
sudo apt install -y openssh mosh
sudo apt install -y vim git tig
sudo apt install -y wget curl lftp fping mtr socat
sudo apt install -y jq

# DIRS

mkdir ~/.bin
mkdir -p ~/.local/share/fonts

# Configuration GIT

git config --global user.name "Xavier Logerais"
git config --global user.email "xavier@logerais.com"

# Configuration BASH

git clone --recursive https://github.com/xlogerais/config-bash.git ~/.bash
bash ~/.bash/create-links.bash

# Configuration VIM

git clone --recursive https://github.com/xlogerais/config-vim.git ~/.vim
bash ~/.vim/create-links.bash

git clone https://github.com/vim-airline/vim-airline        ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
#git clone https://github.com/itchyny/lightline.vim          ~/.vim/bundle/lightline

# Configuration SCREEN

git clone --recursive https://github.com/xlogerais/config-screen.git ~/.screen
bash ~/.screen/create-links.bash

# Configuration TMUX

git clone --recursive https://github.com/xlogerais/config-tmux.git ~/.tmux
bash ~/.tmux/create-links.bash

# FONTS
#TODO# Download some fonts from Nerdfonts
fc-cache --force --verbose ~/.local/share/fonts

# Powerline-go
curl -sL https://api.github.com/repos/justjanne/powerline-go/releases/latest | jq -r '.assets[].browser_download_url | match(".*linux.*") | .string' | wget -i - -O ~/.bin/powerline-go && chmod +x ~/.bin/powerline-go

# Mcfly
#TODO# Add instructions to install mcfly

# Anyenv

git clone https://github.com/anyenv/anyenv.git ~/.anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
anyenv install --init

eval "$(anyenv init -)"
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
git clone https://github.com/znz/anyenv-git.git $(anyenv root)/plugins/anyenv-git

# sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev
yes | anyenv install pyenv
eval "$(anyenv init -)"
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
yes | anyenv install rbenv
eval "$(anyenv init -)"
