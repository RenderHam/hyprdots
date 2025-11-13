#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[ ! -s ~/.config/mpd/pid ] && mpd

# if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
#     exec startx &>/dev/null
# fi

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
