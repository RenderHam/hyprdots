source ~/.cache/hellwal/colors.sh

# magick ~/.config/hypr/assets/input.png -fuzz 10% -fill "#${foreground}" -opaque "#FFFFFF" ~/.config/hypr/assets/output.png
magick ~/.config/hypr/assets/input.png -fuzz 10% -fill "#${color6}" -opaque "#FFFFFF" ~/.config/hypr/assets/output.png

hyprctl reload
