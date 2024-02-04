#!/bin/bash

# Configuration BASH

if [[ ! -d ~/.bash ]]
then
    git clone --recursive https://github.com/xlogerais/config-bash.git ~/.bash
    bash ~/.bash/create-links.bash
fi

for file in config.d/*.bash
do
  bash $file
done

