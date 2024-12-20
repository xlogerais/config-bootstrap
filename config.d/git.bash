#!/bin/bash

# Configuration GIT

git config --global user.name "Xavier Logerais"
git config --global user.email "xavier@logerais.com"

git config --global credential.helper cache

git config --global merge.conflictstyle diff3
git config --global rerere.enabled 1

cat <<EOF >~/.gitignore
### asdf ###
.tool-versions
### mise ###
.mise.toml
### direnv ###
.direnv
.envrc
### python ###
.venv
EOF

cat <<EOF >~/.gitattributes
EOF

git config --global core.excludesfile ~/.gitignore
git config --global core.attributesfile ~/.gitattributes
