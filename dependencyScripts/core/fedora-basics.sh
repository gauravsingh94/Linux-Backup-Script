#!/bin/bash


############################################### Things to do after installing fedora ##########################

# Edit the dnf.conf file with nano and add the specified lines
sudo nano /etc/dnf/dnf.conf <<EOL
max_parallel_downloads=10
fastestmirror=True
EOL

# Save and exit nano

# Update and upgrade the system using dnf
sudo dnf update -y && sudo dnf upgrade -y

# Refresh fwupd metadata
sudo fwupdmgr refresh --force
