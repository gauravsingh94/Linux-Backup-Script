#!/bin/bashs

############################ Removing the Repository created by ohmyzsh and nvm #########

# Define the files and directories to remove
echo "Deleting Repository Created by ohmyzsh and nvm."
files_to_remove=(
  "$HOME/.oh-my-zsh"
  "$HOME/.nvm"
)

# Iterate through the array and remove each file/directory
for item in "${files_to_remove[@]}"; do
  if [ -e "$item" ]; then
    if [ -d "$item" ]; then
      echo "Removing directory: $item"
      rm -rf "$item"
    elif [ -f "$item" ]; then
      echo "Removing file: $item"
      rm "$item"
    fi
  else
    echo "$item does not exist."
  fi
done

echo "Removal process completed."