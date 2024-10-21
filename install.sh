#! /bin/bash

wget -O "$HOME/.dbash.sh" 'https://raw.githubusercontent.com/MrRedacted/dbash/master/.dbash.sh' &&
  if [ -f "$HOME/.bash_profile" ]; then
    printf '\n. "$HOME/.dbash.sh"\n' >>"$HOME/.bash_profile"
  else
    printf '\n. "$HOME/.dbash.sh"\n' >>"$HOME/.profile"
  fi
