#! /bin/bash

# .........................................................
# Install Lando
# .........................................................
echo "What is the URL for the latest Lando release .deb?"
echo "(hint: take a look at https://github.com/lando/lando/releases)"

read LANDO_DOWNLOAD_URL

cd downloads
wget -O lando.deb $LANDO_DOWNLOAD_URL
sudo dpkg -i lando.deb
rm lando.deb

echo "👍 Installed Lando."
