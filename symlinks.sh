#!/bin/bash

# Create config folders if they do not exist
mkdir -p ~/.config/nvim
mkdir -p ~/.config/kitty
mkdir -p ~/.config/zsh

# Create symbolic links for configuration files
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/kitty ~/.config/kitty
ln -sf ~/.dotfiles/zsh/.zshrc ~/.config/zsh/.zshrc
ln -sf ~/.dotfiles/zsh/.p10k.zsh ~/.config/zsh/.p10k.zsh
ln -sf ~/.dotfiles/zsh/.p10k ~/.config/zsh/.p10k
ln -sf ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig

# Run chmod +x ~/.dotfiles/symlinks.sh to make this script executable
