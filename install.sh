#!/bin/bash

# Get all bash files in scripts directory
files=scripts/*

echo "
Installing scripts to $HOME/bin/dame

Files:"
# create a loop to print the name of each file in files on a new line
for file in $files; do
  echo "  $file"
done 


# Reset dame directory
rm -rf "$HOME/bin/dame"

# Create dame directory
mkdir -p "$HOME/bin/dame"

# Copy all bash files to dame directory
cp -p $files "$HOME/bin/dame/"

echo "
Installing dame to /usr/local/bin/"
# Prep directory for dame
mkdir -p "/usr/local/bin/"

# Copy dame to /usr/local/bin
cp -p dame.sh "/usr/local/bin/dame"
