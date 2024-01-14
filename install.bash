#!/bin/bash

# TODO: configure macos to make bash the default interpreter
cp dotfiles/.bashrc ~
rm -f ~/.bash_profile && ln -s ~/.bashrc ~/.bash_profile

# shellcheck source=bin/.bashrc
source ~/.bash_profile

# don't overwrite, just populate
mkdir -p ~/.bin
cp bin/* ~/.bin

# ./deps.bash
# ./brew.bash

# Run all OS configuration scripts
for SCRIPT_PATH in macos/*
do
  ./"$SCRIPT_PATH"
done
