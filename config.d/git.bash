#!/bin/bash

# Configuration GIT

git config --global user.name "Xavier Logerais"
git config --global user.email "xavier@logerais.com"
git config --global rerere.enabled 1
git config --global merge.conflictstyle diff3

cat <<EOF >~/.gitignore
# asdf
.tool-versions
# direnv
.envrc
.direnv
EOF

git config --global core.excludesfile ~/.gitignore
