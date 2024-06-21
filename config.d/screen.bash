#!/bin/bash

# Configuration SCREEN

if [[ ! -d ~/.screen ]]
then
    git clone --recursive https://gitea.logerais.com/xavier/config-screen.git ~/.screen
    bash ~/.screen/create-links.bash
fi
