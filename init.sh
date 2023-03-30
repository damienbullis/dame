#!/bin/bash

# Install Scripts
sh install.sh

# Initialize
custom_alias="\n# dame-cli\nalias dame='$home_dir/bin/dame/dame.sh'\n"

if [ -f ~/.bashrc ]; then
  echo "Adding alias to ~/.bashrc"
  echo "$custom_alias" >> ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
  echo "Adding alias to ~/.zshrc"
  echo "$custom_alias" >> ~/.zshrc
fi