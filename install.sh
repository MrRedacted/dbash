#! /bin/bash

wget -O "$HOME/.dbash.sh" 'https://raw.githubusercontent.com/MrRedacted/dbash/master/.dbash.sh' ||
  {
    echo 'Unable to download file'
    rm "$HOME/.dbash.sh"
    exit 2
  }

sourced_location="$HOME/.bashrc"

if [ -f "$HOME/.bash_profile" ]; then
  if (! grep -q '. "$HOME/.bashrc"' "$HOME/.bash_profile") && (! grep -q '. ~/.bashrc' "$HOME/.bash_profile"); then
    sourced_location="$HOME/.bash_profile"
  fi
else
  if (! grep -q '. "$HOME/.bashrc"' "$HOME/.profile") && (! grep -q '. ~/.bashrc' "$HOME/.profile"); then
    sourced_location="$HOME/.profile"
  fi
fi

if ! grep -q '. "$HOME/.dbash.sh"' "$sourced_location"; then
  printf '\n. "$HOME/.dbash.sh"\n' >>"$sourced_location"
fi

echo "Dbash has successfully been installed! It is being sourced in $sourced_location"
echo "You can update and uninstall Dbash with update_dbash and uninstall_dbash, respectively"
