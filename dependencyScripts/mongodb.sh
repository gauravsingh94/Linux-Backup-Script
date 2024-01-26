#!/bin/bash

###############################################   Mongo DB #################################################################

# Check if MongoDB is already installed
echo "Now Setting Up mongodb"
if command -v mongod &>/dev/null; then
    echo "MongoDB is already installed."
else
    # Create the MongoDB repository configuration file
    sudo tee /etc/yum.repos.d/mongodb-org-4.4.repo <<EOL
[Mongodb]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/8/mongodb-org/4.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.4.asc
EOL

    # Install MongoDB
    sudo dnf install mongodb-org -y

    # Start and enable MongoDB service
    sudo systemctl enable mongod.service
    sudo systemctl start mongod.service

    echo "MongoDB has been installed and started."
fi