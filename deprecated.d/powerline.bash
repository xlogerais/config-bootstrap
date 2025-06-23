#!/bin/bash

# powerline-go
test -x ~/.local/bin/powerline-go \
  || wget -O ~/.local/bin/powerline-go "https://github.com/justjanne/powerline-go/releases/latest/download/powerline-go-linux-amd64" \
  && chmod +x ~/.local/bin/powerline-go
