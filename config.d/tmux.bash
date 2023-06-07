#!/bin/bash

# Configuration TMUX

if [[ ! -d ~/.tmux ]]
then
    git clone --recursive https://github.com/xlogerais/config-tmux.git ~/.tmux
    bash ~/.tmux/create-links.bash
fi
