#!/bin/bash

# Configuration for tmux

git_repo="https://gitea.cloud.logerais.com/xavier/config-tmux.git"
git_branch="master"
config_dir=${XDG_CONFIG_HOME:-$HOME/.config}/tmux

if [[ ! -d "${config_dir}" ]]; then
  git clone "${git_repo}" --branch "${git_branch}" "${config_dir}"
else
  cd "${config_dir}" && git pull
fi
