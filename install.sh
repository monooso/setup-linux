#! /bin/bash

sudo apt update
sudo apt upgrade

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
