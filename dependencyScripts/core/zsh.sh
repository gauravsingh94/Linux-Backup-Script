#!/bin/bash

#########################################################  Installing and setting up the zsh terminal #####################################3

echo "Setting Zsh in you terminal"
# Install Zsh
if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Installing Zsh..."
    sudo dnf install -y zsh
fi

# Check if Oh My Zsh is already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is not installed. Installing Oh My Zsh..."
    
    # Clone the Oh My Zsh repository to the home directory
    git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
    
    # Run the Oh My Zsh installation script
    chmod +x "$HOME/.oh-my-zsh/tools/install.sh"
    "$HOME/.oh-my-zsh/tools/install.sh"
    
    echo "Oh My Zsh installed successfully."
fi
