# Dotfiles

Contains my preference for dotfiles.

Currently containing:
- Git configuration
- Bash configuration and aliases
- tmux configuration

## How to setup

Simply run `./setup.sh` and the sym links will be created.
If a file already exists with the same name then the existing file  will be renamed them with a .bak suffix and the symlink will be created.
If a file it is trying to create a link for doesn't exist then it will be skipped.

## Adding a new dotfile

You'll need to update the `dotfiles` variable in `setup.sh` with your new dotfile's name.
