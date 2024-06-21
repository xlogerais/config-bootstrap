#!/bin/bash

# Configuration BASH

if [[ ! -d ~/.bash ]]
then
    git clone --recursive https://gitea.logerais.com/xavier/config-bash.git ~/.bash
    bash ~/.bash/create-links.bash
fi
