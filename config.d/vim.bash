#!/bin/bash

# Configuration VIM

if [[ ! -d ~/.vim ]]
then
    git clone --recursive https://gitea.logerais.com/xavier/config-vim.git ~/.vim
    bash ~/.vim/create-links.bash
fi


