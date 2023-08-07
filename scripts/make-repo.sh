#!/bin/bash

# Check if arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <repo_name> <repo_origin>"
  exit 1
fi

# Argument 1: Add to README.md
echo "# $1" >> README.md

# Initialize Git repository
git init

# Add all files to the repository
git add .

# Commit changes with a message
git commit -m "batman $1"

# Set branch to main (if not already set)
git branch -M main

# Add the remote origin (Argument 2) and push to the main branch
git remote add origin "$2"
git push -u origin main
