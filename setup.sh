#!/bin/bash

# Directory where your dotfiles repository is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# List of dotfiles to symlink
dotfiles=(".bashrc" ".bash_aliases" ".tmux.conf" ".gitconfig")

# Create symlinks
for file in "${dotfiles[@]}"; do
    # Full path to the dotfile in your repository
    source_file="$DOTFILES_DIR/$file"
    
    # Full path to where the symlink should be in your home directory
    target_file="$HOME/$file"
    
    # Check if the source file exists
    if [ ! -e "$source_file" ]; then
        echo "Warning: $source_file does not exist. Skipping..."
        continue
    fi
    
    # Check if the target already exists
    if [ -e "$target_file" ]; then
        # If it's already a symlink, update it
        if [ -L "$target_file" ]; then
            echo "Updating existing symlink for $file"
            ln -sf "$source_file" "$target_file"
        else
            # If it's a regular file, create a backup
            echo "Backing up existing $file to ${file}.bak"
            mv "$target_file" "${target_file}.bak"
            ln -s "$source_file" "$target_file"
        fi
    else
        # If the target doesn't exist, simply create the symlink
        echo "Creating symlink for $file"
        ln -s "$source_file" "$target_file"
    fi
done

echo "Dotfiles setup complete!"
