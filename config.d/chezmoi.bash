#!/bin/bash

# Configuration for chezmoi

# git_repo="https://github.com/AstroNvim/template"
# git_branch="main"

git_repo="https://gitea.cloud.logerais.com/xavier/config-chezmoi.git"
git_branch="main"

if (command -v chezmoi); then
    chezmoi init https://gitea.cloud.logerais.com/xavier/config-chezmoi.git
    chezmoi apply ~/.config/mise
    mise install
fi
