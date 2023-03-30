#!/bin/bash

# Get all bash files in cwd (excluding install.sh and init.sh)
files=scripts/*.sh

# Find home directory
home_dir=$HOME

echo "Installing scripts to $home_dir/bin/dame:"
echo $files
# Create dame directory
mkdir -p "$home_dir/bin/dame"

# Copy all bash files to dame directory
cp $files "$home_dir/bin/dame/"