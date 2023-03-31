#!/bin/bash

# Install Scripts
sh install.sh

# Initialize Scripts to extend PATH
custom_alias="\n\n# dame-cli\nexport PATH="$HOME/bin/dame:$PATH"\n\n"

if [ -f ~/.bashrc ]; then
  echo "Adding alias to ~/.bashrc"
  echo "$custom_alias" >> ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
  echo "Adding alias to ~/.zshrc"
  echo "$custom_alias" >> ~/.zshrc
fi