#!/bin/bash

# List of files and directories to ignore
IGNORE_LIST="# Misc
.DS_Store
*.log

node_modules/
dist/
build/
coverage/
"

# Create .gitignore file with the ignore list
echo "$IGNORE_LIST" > .gitignore
