#!/bin/bash

# dame is a cli for getting autocomplete on my scripts

# Define the completion function
_dame_completion() {
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local files="$(find "$HOME/bin/dame" -type f -name "$cur*" -printf "%f\n" 2> /dev/null)"
  COMPREPLY=( $(compgen -W "$files" -- "$cur") )
}

# Register the completion function
complete -F _dame_completion dame

# Check if a sub command is provided
if [ -z "$1" ]; then
  echo "Please provide a sub command"
  exit 1
fi

# Perform the action based on the sub command
sh "$HOME/bin/dame/$1"