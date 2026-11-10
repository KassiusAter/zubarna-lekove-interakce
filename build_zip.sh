#!/bin/sh
# Vytvoří dist/zubarna.zip pro nahrání skillu do aplikace Claude.
set -e
cd "$(dirname "$0")"
T=$(mktemp -d)
mkdir -p "$T/zubarna/reference" dist
cp SKILL.md "$T/zubarna/"
cp reference/*.md "$T/zubarna/reference/"
rm -f dist/zubarna.zip
(cd "$T" && zip -qr - zubarna) > dist/zubarna.zip
rm -rf "$T"
echo "Hotovo: $(pwd)/dist/zubarna.zip"
