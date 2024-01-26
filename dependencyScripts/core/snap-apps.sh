#!/bin/bash

# Check if Snap is installed
if ! command -v snap &>/dev/null; then
    echo "Snap is not installed. Please run the script to install Snap first."
    exit 1
fi

# Install Visual Studio Code from Snap
sudo snap install --classic code

# Check if the installation was successful
if [ $? -eq 0 ]; then
    echo "All the snap apps are successfully downloaded."
else
    echo "Failed to add the snap apps."
fi
