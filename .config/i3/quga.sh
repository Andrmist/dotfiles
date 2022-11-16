#!/bin/bash
FILENAME=$(date +%Y-%m-%d_%H-%M-%S)

flameshot $1 -r > $(xdg-user-dir PICTURES)/$FILENAME.png

xclip -selection clipboard -t image/png -i $(xdg-user-dir PICTURES)/$FILENAME.png

# curl -F "file=@$(xdg-user-dir PICTURES)/$FILENAME.png" -F "token=OZ79I6o7eMTHsEnAQlyB0g0NM" -F "social=y" https://m0e.space | xclip -selection clipboard

#rm -f /tmp/screenshot.png
