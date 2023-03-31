#!/bin/bash

# Get all bash files in scripts directory
files=scripts/*

echo "Installing scripts to $HOME/bin/dame:"
echo $files
# Create dame directory
mkdir -p "$HOME/bin/dame"

# Copy all bash files to dame directory
cp -p $files "$HOME/bin/dame/"