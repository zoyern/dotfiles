#!/bin/bash

FONT_NAME="FiraCode"
FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

echo "Téléchargement et installation de la police Nerd Font..."
curl -fLo "$FONT_DIR/$FONT_NAME.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$FONT_NAME.zip"
unzip -o "$FONT_DIR/$FONT_NAME.zip" -d "$FONT_DIR"
rm "$FONT_DIR/$FONT_NAME.zip"

echo "Mise à jour du cache de police..."
fc-cache -fv

echo "La police a été installée. Configurez votre terminal pour utiliser la nouvelle police."

