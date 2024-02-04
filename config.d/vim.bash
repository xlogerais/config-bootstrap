#!/bin/bash

# Configuration VIM

if [[ ! -d ~/.vim ]]
then
    git clone --recursive https://github.com/xlogerais/config-vim.git ~/.vim
    bash ~/.vim/create-links.bash
fi


