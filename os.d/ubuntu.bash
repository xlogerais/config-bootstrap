#!/bin/bash

if (grep -q Ubuntu <(lsb_release --id --short)); then
    sudo apt update
    sudo apt upgrade -y

    sudo apt install -y coreutils grep less tar zip unzip tree
    sudo apt install -y man manpages-fr manpages-fr-extra
    sudo apt install -y bash bash-completion
    sudo apt install -y zsh fish
    sudo apt install -y screen tmux
    sudo apt install -y git #tig
    sudo apt install -y vim
    sudo apt install -y openssh-server openssh-client mosh
    sudo apt install -y wget curl lftp fping mtr socat
fi
