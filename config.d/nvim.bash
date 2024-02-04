#!/bin/bash

# Configuration NVIM

if [[ ! -d ~/.config/nvim ]]
then
    git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
    nvim +PackerSync
fi

