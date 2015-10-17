#!/usr/bin/env bash 

###
# Check that stow is available on the system
###

which stow > /dev/null || (echo "GNU stow is required for the installation" && exit)

###
# Install all dotfiles.
###

find * -mindepth 0 -maxdepth 0 -type d -not -path '*/\.*' -exec sh -c 'stow {} 2> stow.log' \;

echo ".dotfiles OK"
