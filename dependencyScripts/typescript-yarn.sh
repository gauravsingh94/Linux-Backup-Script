#!/bin/bash

############################################ installing typescript and yarn ##########################################################

echo "Installing TypeScript and Yarn"

# Install TypeScript globally
npm install -g typescript

# Install Yarn globally
npm install -g yarn

# Display TypeScript and Yarn versions
echo "TypeScript version:"
tsc -v

echo "Yarn version:"
yarn -v
