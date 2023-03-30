#!/bin/bash

# dame is a cli for getting autocomplete on my scripts

# Define the completion function
_dame_completion() {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local files=$(compgen -f -- "$cur")
  COMPREPLY=( $(printf "%s\n" "${files[@]}" ) )
}

# Register the completion function
complete -F _dame_completion dame

# Check if a sub command is provided
if [ -z "$1" ]; then
  echo "Please provide a sub command"
  exit 1
fi

# Perform the action based on the sub command
echo "$1"