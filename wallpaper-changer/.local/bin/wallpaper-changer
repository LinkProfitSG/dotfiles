#!/bin/sh

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
CONFIG_DIR="$HOME/.config/wallpaper-changer"
STATE_FILE="$CONFIG_DIR/state.json"

CURRENT_INDEX=$(jq '.selected' $STATE_FILE)

WALLPAPER_FILES=("$WALLPAPER_DIR"/*)

NEXT_INDEX=$((CURRENT_INDEX + 1))

if [ ! -e "${WALLPAPER_FILES[$NEXT_INDEX]}" ]; then
  NEXT_INDEX=0
fi

NEXT_WALLPAPER=${WALLPAPER_FILES[$NEXT_INDEX]}

matugen image "$NEXT_WALLPAPER" --prefer lightness

jq --argjson value "$NEXT_INDEX" '.selected = $value' $STATE_FILE > tmp.json && mv tmp.json $STATE_FILE
