#!/bin/bash

# Install mise-en-place

if (command -v mise &>/dev/null); then
	curl https://mise.run | sh
fi
