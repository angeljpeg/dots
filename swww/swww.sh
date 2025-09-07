WALLPAPERS_DIR=~/Pictures/Wallpapers/catppuccin
WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
swww img "$WALLPAPER"