#! /bin/bash

# .........................................................
# Install Flatpak
# .........................................................
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "👍 Installed Flatpak, so you can now install more things."
