#!/bin/bash

# dame is a cli for getting autocomplete on my scripts

# Check if a sub command is provided
if [ -z "$1" ]; then
  echo "Please provide a sub command"
  exit 1
fi

# Perform the action based on the sub command
"$HOME/bin/dame/$1" "${@:2}"