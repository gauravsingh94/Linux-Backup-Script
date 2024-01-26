#!/bin/bash


############################################## All Flatpak Application installation ################################

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak is not installed. Installing Flatpak..."
    # Install Flatpak (you might need to adapt this to your Linux distribution)
    sudo apt-get install flatpak  # Example for Ubuntu-based systems
    # Add the Flathub remote
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# List of Flatpak applications to install
echo "Installing all necessary Flatpak applications"
flatpak_apps=(
    "md.obsidian.Obsidian"
    "com.brave.Browser"
    "com.google.Chrome"
    "com.mattjakeman.ExtensionManager"
    "org.telegram.desktop"
    "com.discordapp.Discord"
    "com.todoist.Todoist"
    "com.spotify.Client"
    "org.videolan.VLC"
    "com.github.tchx84.Flatseal"
    "us.zoom.Zoom"
    "com.getpostman.Postman"
    "org.onlyoffice.desktopeditors"
    "com.github.tchx84.Flatseal"
    "com.github.jeromerobert.pdfarranger"
)
