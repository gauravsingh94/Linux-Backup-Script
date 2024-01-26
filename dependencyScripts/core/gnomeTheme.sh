#!/bin/bash

echo "Changing your theme like Gaurav's gnome themes."
# Clone the WhiteSur GTK theme repository
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git ~/WhiteSur-gtk-theme

# Change to the theme directory
cd ~/WhiteSur-gtk-theme

# Run the install script with the specified options
./install.sh -m -t all -l -c Dark -N stable --normal --round -i fedora

# Check if the installation was successful
if [ $? -eq 0 ]; then
    echo "WhiteSur GTK theme has been successfully installed."
else
    echo "Failed to install WhiteSur GTK theme."
fi
