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

for tool in "${tools[@]}"
do
    echo
    echo "-- Installing ${tool}"
    asdf plugin add ${tool}
    asdf install ${tool} latest
    asdf global ${tool} latest
done

# Mcfly
echo
echo "-- Installing mcfly"
asdf plugin add mcfly https://github.com/barolab/asdf-mcfly.git
asdf install mcfly latest
asdf global mcfly latest

# lsd
echo
echo "-- Installing lsd"
asdf plugin add lsd https://github.com/argylelabcoat/asdf-lsd.git
asdf install lsd latest
asdf global lsd latest

test -d ~/.local/bin || mkdir -p ~/.local/bin

# broot
test -x ~/.local/bin/broot || wget -O ~/.local/bin/broot "https://dystroy.org/broot/download/x86_64-linux/broot"

# powerline-go
test -x ~/.local/bin/powerline-go || wget -O ~/.local/bin/powerline-go "https://github.com/justjanne/powerline-go/releases/latest/download/powerline-go-linux-amd64" && chmod +x ~/.local/bin/powerline-go
