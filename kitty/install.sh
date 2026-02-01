#!/bin/sh

if [ ! -d "$HOME/.config" ]; then
    mkdir -p "$HOME/.config"
fi

if [ -d "$HOME/.config/kitty" ] && [ ! -L "$HOME/.config/kitty" ]; then
    echo "Backing up existing kitty config..."
    mv "$HOME/.config/kitty" "$HOME/.config/kitty.backup"
fi

if [ ! -L "$HOME/.config/kitty" ]; then
    ln -s "$ZSH/kitty" "$HOME/.config/kitty"
    echo "Linked $ZSH/kitty to $HOME/.config/kitty"
else
    echo "Kitty config already linked."
fi
