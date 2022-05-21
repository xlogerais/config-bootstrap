#!/bin/bash

if ( grep -q Ubuntu <(lsb_release -i) )
then
    sudo apt update
    sudo apt upgrade -y
    
    sudo apt install -y coreutils grep less tar tree
    sudo apt install -y man manpages-fr manpages-fr-extra
    sudo apt install -y bash zsh fish
    sudo apt install -y screen tmux
    sudo apt install -y openssh mosh
    sudo apt install -y vim git #tig
    sudo apt install -y wget curl lftp fping mtr socat
fi
