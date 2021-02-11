#!/usr/bin/env bash
# File: guessinggame.sh, user guesses file count in a directory

file_count="$(find . -type f -maxdepth 1 | wc -l)"

echo "A little guessing game"

echo "Type in a guess of number of files in this directory, and press enter:"
read response

function guess {

  while [[ "$input" != "quit" ]]
  do
    if [[ "response" -eq "$file_count" ]]
    then
      echo "Nice guess! Game over"
      input="quit"
    elif [[ "$response" -gt "$file_count" ]]
    then
      echo "Too high, guess again:"
      read response
    elif [[ "$response" -lt "$file_count" ]]
    then
      echo "Too low, guess again:"
      read response
    fi
  done
}

guess





