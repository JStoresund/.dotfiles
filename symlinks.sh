#!/bin/bash

set -e # Exit in case of error

echo "🛠️  Setting up dotfile symlinks..."

# Create config folders if they do not exist
mkdir -p ~/.config

# Full directories
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/kitty ~/.config/kitty

# Zsh
mkdir -p ~/.config/zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.config/zsh/.zshrc
ln -sf ~/.dotfiles/zsh/.p10k.zsh ~/.config/zsh/.p10k.zsh
ln -sf ~/.dotfiles/zsh/.p10k ~/.config/zsh/.p10k

# Individual files
ln -sf ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig

echo "🎉 Dotfiles setup complete!"

# Run chmod +x ~/.dotfiles/symlinks.sh to make this script executable
