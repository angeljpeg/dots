#!/bin/bash
# ~/.config/hypr/scripts/change-wallpaper.sh
# Cambiar wallpaper aleatorio sin repetir el actual

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/catppuccin"
STATE_FILE="$HOME/.cache/current_wallpaper.txt"

# Leer el wallpaper actual del archivo de estado
CURRENT=""
if [ -f "$STATE_FILE" ]; then
    CURRENT=$(cat "$STATE_FILE")
fi

# Elegir un wallpaper aleatorio distinto
while :; do
    NEW=$(ls "$WALLPAPER_DIR" | shuf -n1)
    [ "$NEW" != "$CURRENT" ] && break
done

# Aplicar el nuevo wallpaper
swww img "$WALLPAPER_DIR/$NEW" --transition-type fade --transition-duration 1

# Guardar el wallpaper actual en el archivo de estado
echo "$NEW" > "$STATE_FILE"
