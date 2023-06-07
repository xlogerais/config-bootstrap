#!/bin/bash


for file in config.d/*.bash
do
  bash $file
done

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
