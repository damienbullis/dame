#!/bin/bash

# Get all bash files in cwd (excluding install.sh and init.sh)
files=scripts/*.sh


echo "Installing scripts to $HOME/bin/dame:"
echo $files
# Create dame directory
mkdir -p "$HOME/bin/dame"

# Copy all bash files to dame directory
cp $files "$HOME/bin/dame/"