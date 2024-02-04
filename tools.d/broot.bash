#!/bin/bash

# broot
test -d ~/.local/bin || mkdir -p ~/.local/bin
test -x ~/.local/bin/broot || wget -O ~/.local/bin/broot "https://dystroy.org/broot/download/x86_64-linux/broot"
