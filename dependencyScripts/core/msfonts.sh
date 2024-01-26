#!/bin/bash

########################### Installing the MS Fonts #################################


# Step 1: Install required packages
echo "Installing The Microsoft Fonts."
echo "Step 1: Installing required packages..."
sudo dnf install curl cabextract xorg-x11-font-utils fontconfig

# Step 2: Install Microsoft TrueType core fonts
echo "Step 2: Installing Microsoft TrueType core fonts..."
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm
