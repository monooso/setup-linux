#! /bin/bash

# .........................................................
# Install PyCharm Professional
# .........................................................
if ! type snap 2>/dev/null; then
  echo "👎 You must install Snap before running this script."
  exit 1
fi

sudo snap install pycharm-professional --classic

echo "👍 Installed PyCharm Professional."
