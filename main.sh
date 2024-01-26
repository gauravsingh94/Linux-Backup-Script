#!/bin/bash

# Source dependency scripts
source ./dependencyScripts/core/fedora-basics.sh
source ./dependencyScripts/core/git.sh
source ./dependencyScripts/core/flatpak.sh
source ./dependencyScripts/mongodb.sh
source ./dependencyScripts/docker.sh
source ./dependencyScripts/core/snap.sh
source ./dependencyScripts/core/snap-apps.sh
source ./dependencyScripts/core/zsh.sh

echo "Copy .zshrc file applying the Gaurav's zsh settings.";
cp ../configs/.zshrc ~/.zshrc
source ./dependencyScripts/node.sh
source ./dependencyScripts/typescript-yarn.sh


source ./dependencyScripts/core/cpu-freq.sh
source ./dependencyScripts/core/msfonts.sh
source ./dependencyScripts/core/videoCodecs.sh

source ./dependencyScripts/core/gnomeExtensions.sh
source ./dependencyScripts/core/gnome-tweaks.sh
source ./dependencyScripts/core/gnomeTheme.sh

# Install fonts
cp ./fonts/SF-Pro-Display-Regular.otf ~/.fonts/

# Set up wallpapers
cp ./wallpaper/wallpaper.jpg ~/Pictures/

# Additional customizations and configurations can be added here

# Clean up unnecessary files
source ./dependencyScripts/cleanup.sh

echo "All tasks in main.sh completed."

#########################fonts setup############################
echo "Setting up SF-Pro fonts.";
cp fonts/* ~/.local/share/fonts/


echo "Hurry! you have configure your linux as Gaurav's now you be like him.";
source ./configs/backup-file.conf