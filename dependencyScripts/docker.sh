#!/bin/bash

############################################################# Docker Setup #####################################################
# Configuring docker

echo "Now Setting up docker"
# Check if Docker is already installed
if command -v docker &>/dev/null; then
    echo "Docker is already installed."
else
    # Install required packages
    sudo dnf -y install dnf-plugins-core

    # Add Docker repository
    sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

    # Install Docker
    sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

    # Start Docker service
    sudo systemctl start docker

    # Test Docker installation
    sudo docker run hello-world

    # Add the current user to the docker group
    sudo usermod -aG docker ${USER}

    username=$(whoami)

    su - ${USER}

    groups

    sudo usermod -aG docker "$username"

    echo "Docker has been installed and configured."
fi