#!/bin/bash

# Configuration for neovim

# git_repo="https://github.com/AstroNvim/template"
# git_branch="main"

git_repo="https://gitea.cloud.logerais.com/xavier/config-astronvim.git"
git_branch="main"
config_dir=${XDG_CONFIG_HOME:-$HOME/.config}/nvim

if [[ ! -d "${config_dir}" ]]; then
    git clone "${git_repo}" --branch "${git_branch}" "${config_dir}"
    nvim --headless +q
else
    cd "${config_dir}" && git pull
fi
