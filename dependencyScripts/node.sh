#!/bin/bash

########################################################    installing node and nvm ####################################################################

echo "Installing NVM and Node"
# Check if NVM is already installed
if [ ! -d "$HOME/.nvm" ]; then
    echo "NVM is not installed. Installing..."

    # Clone the NVM repository to the home directory
    git clone https://github.com/nvm-sh/nvm.git "$HOME/.nvm"

    # Source NVM script to make it available in this script
    source "$HOME/.nvm/nvm.sh"

    # Install the latest version of Node.js
    nvm install node

    # Set the newly installed Node.js version as the default
    nvm use node

    echo "NVM and Node.js installed successfully."
else
    echo "NVM is already installed."
fi

# Display Node.js and NVM versions
node -v
nvm --version