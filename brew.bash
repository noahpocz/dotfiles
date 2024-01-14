#!/bin/bash

brew update

brew install --cask rectangle

brew install koekeishiya/formulae/skhd
skhd --start-service
