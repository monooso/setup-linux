#! /bin/bash

# .........................................................
# Install Slack
# .........................................................
if ! type flatpak 2>/dev/null; then
  echo "👎 You must install Flatpak before running this script."
  exit 1
fi

flatpak install flathub com.slack.Slack

echo "👍 Installed Slack, so now you'll never get any work done."
