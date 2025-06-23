#!/bin/bash

# mise-en-place (https://mise.jdx.dev/)

# Install mise

if (! command -v mise &>/dev/null); then
	curl https://mise.run | sh
fi

if (command -v mise &>/dev/null); then
	# Activate
	eval "$(mise activate bash)"
	mise settings set experimental true
	# Install some plugins
	(mise where usage &>/dev/null) || mise use -g usage # for completion
	# mise use -g cargo:ubi # to install binaries from Github release

	(mise where chezmoi &>/dev/null) || mise use -g chezmoi # to manage dotfiles
fi
