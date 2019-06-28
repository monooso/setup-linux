#! /bin/bash

sudo apt update
sudo apt upgrade

# .........................................................
# Install Flatpak
# .........................................................
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "👍 Installed Flatpak."


# .........................................................
# Install Snap
# .........................................................
sudo apt install snapd
echo "👍 Installed Snap."

echo "Now we've installed those things, we can install others things..."

# Load everything from install.d/
setopt extended_glob
for install_script in ./install.d/*[^~]; do
    source $install_script
done

# .........................................................
# Oddments
# .........................................................
echo "Finished automatic installations."
echo "You'll need to install the following applications manually, like a peasant:"
echo "- Remember the Milk"
