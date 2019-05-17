#! /bin/bash

# .........................................................
# Install Sequeler
# .........................................................
if ! type flatpak 2>/dev/null; then
  echo "👎 You must install Flatpak before running this script."
  exit 1
fi

flatpak install flathub com.github.alecaddd.sequeler

echo "👍 Installed Sequeler."
