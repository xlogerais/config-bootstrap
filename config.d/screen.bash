#!/bin/bash

git_repo="https://gitea.cloud.logerais.com/xavier/config-screen.git"
git_branch="master"
config_dir=${XDG_CONFIG_HOME:-$HOME/.config}/screen

if [[ ! -d "${config_dir}" ]]; then
  git clone "${git_repo}" --branch "${git_branch}" --recursive "${config_dir}"
else
  cd "${config_dir}" && git pull
fi
ln -sf "${config_dir}/screenrc" "${HOME}/.screenrc"
