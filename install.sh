#!/usr/bin/env bash 

###
# Check that stow is available on the system
###

which stow || echo "GNU stow is required for the installation" && exit

###
# Install all dotfiles.
###

find * -mindepth 0 -maxdepth 0 -type d -not -path '*/\.*' -exec stow {} \;
