#!/bin/bash

# Configuration GIT

git config --global user.name "Xavier Logerais"
git config --global user.email "xavier@logerais.com"

# Configuration BASH

if [[ ! -d ~/.bash ]]
then
    git clone --recursive https://github.com/xlogerais/config-bash.git ~/.bash
    bash ~/.bash/create-links.bash
fi

# Configuration VIM

if [[ ! -d ~/.vim ]]
then
    git clone --recursive https://github.com/xlogerais/config-vim.git ~/.vim
    bash ~/.vim/create-links.bash
fi

# Configuration NVIM

if [[ ! -d ~/.config/nvim ]]
then
    git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
    nvim +PackerSync
fi

# Configuration SCREEN

if [[ ! -d ~/.screen ]]
then
    git clone --recursive https://github.com/xlogerais/config-screen.git ~/.screen
    bash ~/.screen/create-links.bash
fi

# Configuration TMUX

if [[ ! -d ~/.tmux ]]
then
    git clone --recursive https://github.com/xlogerais/config-tmux.git ~/.tmux
    bash ~/.tmux/create-links.bash
fi
