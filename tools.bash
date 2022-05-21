#!/bin/bash

# Install asdf

test -d $HOME/.asdf || git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# Install plugins and tools

declare -a tools

tools+=(shellcheck)
tools+=(direnv)
tools+=(lazygit)
tools+=(jq yq)
tools+=(kubectl helm k9s)
tools+=(vault)
tools+=(terraform terragrunt)

for tool in "${tools[@]}"
do
    echo
    echo "-- Installing ${tool}"
    asdf plugin add ${tool}
    asdf install ${tool} latest
    asdf global ${tool} latest
done

# Powerline-go
echo
echo "-- Installing powerline-go"
asdf plugin add justjanne-powerline-go git@plmlab.math.cnrs.fr:plmteam/common/asdf/justjanne/asdf-justjanne-powerline-go.git
asdf install justjanne-powerline-go latest
asdf global justjanne-powerline-go latest


# Mcfly
echo
echo "-- Installing mcfly"
asdf plugin add mcfly https://github.com/barolab/asdf-mcfly.git
asdf install mcfly latest
asdf global mcfly latest
