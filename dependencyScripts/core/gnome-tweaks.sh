#!/bin/bash


################################# Installing Gnome Tweaks ###################################
echo "Installing GNOME Tweaks..."
sudo dnf install gnome-tweaks

echo "GNOME Tweaks installation complete."

# Iterate through the list and install each application
for app in "${flatpak_apps[@]}"; do
    flatpak install flathub "$app" -y
done


echo "Flatpak applications have been installed."
