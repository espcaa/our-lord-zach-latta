#!/bin/sh

FOLDER="/pics"

for img in "$FOLDER"/*.png; do
  [ -e "$img" ] || continue
  convert "$img" -strip -quality 80 "$img"
done
