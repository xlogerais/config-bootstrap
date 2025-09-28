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
tools+=(ripgrep exa bat dust delta)

for tool in "${tools[@]}"; do
	echo
	echo "-- Installing ${tool}"
	asdf plugin add ${tool}
	asdf install ${tool} latest
	asdf global ${tool} latest
done

# Configure asdf/direnv integration
asdf direnv setup --shell bash --version latest

# Install extra plugins and tools

# lsd
echo
echo "-- Installing lsd"
asdf plugin add lsd https://github.com/mise-plugins/asdf-lsd/
asdf install lsd latest
asdf global lsd latest

# Mcfly
echo
echo "-- Installing mcfly"
asdf plugin add mcfly https://github.com/barolab/asdf-mcfly.git
asdf install mcfly latest
asdf global mcfly latest

# Broot
echo
echo "-- Installing broot"
asdf plugin add broot https://github.com/cmur2/asdf-broot.git
asdf install broot latest
asdf global broot latest
