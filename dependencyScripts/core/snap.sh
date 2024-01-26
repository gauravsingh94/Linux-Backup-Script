#!/bin/bash

# Check if Snap is already installed
if ! command -v snap &>/dev/null; then
    echo "Snap is not installed. Setting up Snap on Fedora..."
    
    # Enable the EPEL repository
    sudo dnf install -y epel-release
    
    # Install Snapd from the EPEL repository
    sudo dnf install -y snapd
    
    # Enable and start the Snapd service
    sudo systemctl enable --now snapd.socket
    
    # Create symbolic links to enable classic snap support
    sudo ln -s /var/lib/snapd/snap /snap
    
    echo "Snap has been installed and configured on Fedora."
else
    echo "Snap is already installed."
fi
