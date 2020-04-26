#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

unsetopt multios

# Autocorrect typos in path names when using the `cd` command
shopt -s cdspell
# Check the window size after each command and, if necessary, update
# the values of `LINES` and `COLUMNS`
shopt -s checkwinsize
# Save all lines of a multiple-line command in the same history entry
shopt -s cmdhist
# Include filenames beginning with a "." in the filename expansion
shopt -s dotglob
# Use extended pattern matching features
shopt -s extglob
# Append to the history file, rather then overwriting it
shopt -s histappend
# Do not attempt to search the PATH for possible completions when
# completion is attempted on an empty line
shopt -s no_empty_cmd_completion
# Match filenames in a case-insensitive# fashion when performing
# filename expansion
shopt -s nocaseglob
# Recursive globbing with "**"
if [ ${BASH_VERSINFO[0]} -ge 4 ]; then
  shopt -s globstar
fi