#!/bin/bash


################################### Git install #####################################################

# Check if Git is already installed
if ! command -v git &>/dev/null; then
    # Update the package manager's cache
    sudo dnf update -y
    
    # Install Git
    sudo dnf install git -y
    
    # Verify the installation
    if command -v git &>/dev/null; then
        echo "Git has been successfully installed."
    else
        echo "Failed to install Git."
    fi
else
    echo "Git is already installed."
fi