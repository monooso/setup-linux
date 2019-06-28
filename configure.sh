#! /bin/bash

# .........................................................
# Use ZSH
# .........................................................
chsh -s $(which zsh)

# .........................................................
# Create an SSH key
# .........................................................
echo "Enter a passphrase for your SSH key:"
read PASSPHRASE

echo "Enter an email address for your SSH key:"
read EMAIL

ssh-keygen \
	-t rsa \
	-b 4096 \
	-C $EMAIL \
	-f ~/.ssh/id_rsa \
	-N $PASSPHRASE \
	-q

# .........................................................
# Creata a GPG key
# .........................................................
echo "Generating a new GPG key."
echo "(@see https://help.github.com/en/articles/generating-a-new-gpg-key for instructions)"

gpg --full-generate-key
