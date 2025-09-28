#!/bin/bash

# mise-en-place (https://mise.jdx.dev/)

# Install mise

if (! command -v mise &>/dev/null); then
	curl https://mise.run | sh
fi

# Activate mise

test -x ~/.local/bin/mise && eval "$(~/.local/bin/mise activate bash)"

# Configure mise
#
mise settings set experimental true

# Install some essential tools
(mise where usage &>/dev/null) || mise use -g usage     # for completion
(mise where chezmoi &>/dev/null) || mise use -g chezmoi # to manage dotfiles
