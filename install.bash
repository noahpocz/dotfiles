#!/bin/bash

# TODO: configure macos to make bash the default interpreter

install_dotfiles() {
  for DOTFILE_PATH in dotfiles/*
  do
    BASENAME=$(basename "$DOTFILE_PATH")
    cp "$DOTFILE_PATH" "$HOME/.$BASENAME"
  done

  # use bashrc because I feel like it
  rm -f ~/.bash_profile && ln -s ~/.bashrc ~/.bash_profile

  # shellcheck source=bin/.bashrc
  source ~/.bash_profile
}

run_os_config_scripts() {
  for SCRIPT_PATH in scripts/os/*
  do
    ./"$SCRIPT_PATH"
  done
}

install_bin_extensions() {
  # don't overwrite, just populate
  mkdir -p ~/.bin
  cp bin/* ~/.bin
}

