#!/bin/bash

extensions=(
    "user-theme@gnome-shell-extensions.gcampax.github.com"
    "blur-my-shell@aunetx"
    "clipboard-indicator@tudmotu.com"
    "notification-position@drugo.dev"
    "gsconnect@andyholmes.github.io"
    "caffeine@patapon.info"
    "emoji-copy@felipeftn"
    "trayIconsReloaded@selfmade.pl"
    "Move_Clock@rmy.pobox.com"
    "notification-timeout@chlumskyvaclav.gmail.com"
    "tiling-assistant@leleat-on-github"
    "simple-timer@majortomvr.github.com"
    "gnome-ui-tune@itstime.tech"
    "impatience@gfxmonk.net"
    "quick-settings-tweaks@qwreey"
    "battery-indicator-icon@Deminder"
    "status-area-horizontal-spacing@mathematical.coffee.gmail.com"
    "top-bar-organizer@julian.gse.jsts.xyz"
    "background-logo@fedorahosted.org"
)

for extension in "${extensions[@]}"; do
    gnome-extensions install "$extension"
done

echo "GNOME Shell extensions have been downloaded and installed."
