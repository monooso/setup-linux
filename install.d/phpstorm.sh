#! /bin/bash

# .........................................................
# Install PHPStorm
# .........................................................
if ! type snap 2>/dev/null; then
  echo "👎 You must install Snap before running this script."
  exit 1
fi

sudo snap install phpstorm --classic

echo "👍 Installed PHPStorm."
