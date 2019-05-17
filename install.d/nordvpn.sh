#! /bin/bash

# .........................................................
# Install NordVPN
# Not sure if this always downloads the latest version
# .........................................................
cd downloads
wget -O nordvpn-installer.deb https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb

sudo apt install ./nordvpn-installer.deb
sudo apt update
sudo apt install nordvpn

rm nordvpn-installer.deb

echo "👍 Installed NordVPN. IN YOUR FACE, NSA."
