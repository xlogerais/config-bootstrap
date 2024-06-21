#!/bin/bash

# Configuration TMUX

if [[ ! -d ~/.tmux ]]
then
    git clone --recursive https://gitea.logerais.com/xavier/config-tmux.git ~/.tmux
    bash ~/.tmux/create-links.bash
fi
