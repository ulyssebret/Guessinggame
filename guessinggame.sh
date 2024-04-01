#!/bin/bash

function guess {
  local file_count=$(ls -1 | wc -l)
  local guess=-1

  while [[ $guess -ne $file_count ]]; do
    echo "Guess the number of files in the current directory:"
    read guess

    if [[ ! $guess =~ ^[0-9]+$ ]]; then
      echo "Please enter a valid number."
    elif [[ $guess -lt $file_count ]]; then
      echo "Too low. Try again."
    elif [[ $guess -gt $file_count ]]; then
      echo "Too high. Try again."
    fi
  done

  echo "Congratulations! You guessed the correct number of files."
}

guess
