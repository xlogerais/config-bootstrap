#!/bin/bash

# Install nix (with the nix-installer tool from DeterminateSystems)
# (See https://github.com/DeterminateSystems/nix-installer)

if ( ! command -v nix &> /dev/null ); then
  curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
fi

# Install home-manager
if (command -v nix-channel && command -v nix-shell &> /dev/null ); then
  nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
  nix-channel --update
  nix-shell '<home-manager>' -A install
fi
