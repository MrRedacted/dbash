#! /bin/bash

wget -O "$HOME/.dbash.sh" 'https://raw.githubusercontent.com/MrRedacted/dbash/master/.dbash.sh' &&
  if [ -f "$HOME/.bash_profile" ]; then
    echo -e '\n. "$HOME/.dbash.sh"' >>"$HOME/.bash_profile"
  else
    echo -e '\n. "$HOME/.dbash.sh"' >>"$HOME/.profile"
  fi
