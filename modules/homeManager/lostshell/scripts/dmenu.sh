#!/bin/bash

###########################
##Launches places submenu##
###########################
show_placesMenu() {
    placesMenu="󰌑 Go Back\n󱂵 Home\n󰉍 Downloads\n󰮃 Games\n Documents\n TLP\n󱁿 Config\n󱁿 Local\n󱘎 Root"
    navigationPlaces=$(echo -e "$placesMenu" | rofi -dmenu -p "Places")

    case "$navigationPlaces" in
        "󰌑 Go Back")
            show_mainMenu;;
        *Home)
            xdg-open "$HOME";;
        *Downloads)
            xdg-open "$HOME/Downloads";;
        *Games)
            xdg-open "$HOME/Games";;
        *Documents)
            xdg-open "$HOME/Documents";;
        *TLP)
            xdg-open "$HOME/Documents/TLP";;
        *Config)
            xdg-open "$HOME/.config";;
        *Local)
            xdg-open "$HOME/.local";;
        *Root)
            xdg-open "/";;
        esac
}

##########################
##Launches tools submenu##
##########################

show_toolsMenu() {
    toolsMenu="󰌑 Go Back\n Adb Connect\n Mirror Android\n Kill a Window (Hyprland)\n Kill a Window (Niri)"
    navigationTools=$(echo -e "$toolsMenu" | rofi -dmenu -p "Tools")

    case "$navigationTools" in
        "󰌑 Go Back")
            show_mainMenu;;
        " Adb Connect")
            bash $HOME/.config/lostshell/scripts/connectAdb.sh;;
        " Mirror Android")
            bash scrcpy --mouse=uhid;;
        " Kill a Window (Hyprland)")
            hyprctl kill;;
        " Kill a Window (Niri)")
            niri msg pick-window | grep "PID" | awk '{print $2}' | xargs kill;;
    esac
}

##################################
##Launches documentation submenu##
##################################
show_docsMenu() {
    docsMenu="󰌑 Go Back\n󰣇 ArchWiki\n󱄅 NixOS Packages\n󱄅 NixOS Options\n󱄅 HomeManager Options\n Hyprland\n Waybar\n ProtonDB"
    navigationDocs=$(echo -e "$docsMenu" | rofi -dmenu -p "Documantation")

    case "$navigationDocs" in
        "󰌑 Go Back")
            show_mainMenu;;
        *ArchWiki)
            xdg-open "https://wiki.archlinux.org/title/Main_page" && notify-send -t 1300 "󰣇 ArchWiki was open";;
        "󱄅 NixOS Packages")
            xdg-open "https://search.nixos.org/packages" && notify-send -t 1300 "󱄅 NixOS Packages was open";;
        "󱄅 NixOS Options")
            xdg-open "https://search.nixos.org/options" && notify-send -t 1300 "󱄅 NixOS Options was open";;
        "󱄅 HomeManager Options")
            xdg-open "https://home-manager-options.extranix.com/?query=&release=master" && notify-send -t 1300 "󱄅 HomeManager Options was open";;
        *Hyprland)
            xdg-open "https://wiki.hypr.land/" && notify-send -t 1300 " Hyprland Wiki was open";;
        *Waybar)
            xdg-open "https://github.com/Alexays/Waybar/wiki" && notify-send -t 1300 " Waybar Wiki was open";;
        *ProtonDB)
            xdg-open "https://www.protondb.com/" && notify-send -t 1300 " ProtonDB was open";;
        esac
}

#############################
##Launches settings submenu##
#############################
show_settingsMenu() {
    settingsMenu="󰌑 Go Back\n󱁇 Mango IPC\n Change wallpaper\n󱄅 Edit NixOS\n󱄅 Rebuild NixOS\n Restart Waybar"
    navigationSettings=$(echo -e "$settingsMenu" | rofi -dmenu -p "Settings")

    case "$navigationSettings" in
        "󰌑 Go Back")
            show_mainMenu;;
        " Change wallpaper")
            bash $HOME/.config/lostshell/scripts/wallpaper.sh;;
        "󱁇 Switch mango layout")
            show_mangoMenu;;
        "󱄅 Edit NixOS")
           $EDITOR /home/lost/Projects/LostNix;; 
        "󱄅 Rebuild NixOS")
            ghostty -e sh -c "sudo nixos-rebuild switch --flake /home/lost/Projects/LostNix#laptop; echo 'Pressione ENTER para fechar...' && read";;
        " Restart Waybar")
            bash /home/lost/.config/lostshell/scripts/restartWaybar.sh;;
#        " Refresh Pyprland")
#            pypr reload;;
    esac
}


################
## Mango menu ##
################

show_mangoMenu() {
    settingsMenu=" Change layout\n󱁇 Mango IP\n󱁇 Reload"
    navigationSettings=$(echo -e "$settingsMenu" | rofi -dmenu -p "Mango")

    case "$navigationSettings" in
        *layout)
            show_mangoLayout;;
        "󱁇 Mango IPC")
            bash $HOME/.config/lostshell/scripts/mango_ipc.sh;;
        *Reload)
            mmsg -d reload_config;;
    esac
}

show_mangoLayout() {
    settingsMenu=" Tile\n Scroller\n Monocle\n Grid\n Deck\n Center tile\n Vertical tile\n Right tile\n Vertical Scroller\n Vertical grid\n Vertical deck\n Tgmix"
    navigationSettings=$(echo -e "$settingsMenu" | rofi -dmenu -p "Layout")

    case "$navigationSettings" in
        " Tile") mmsg -l "T";;
        " Scroller") mmsg -l "S";;
        " Monocle") mmsg -l "M";;
        " Grid") mmsg -l "G";;
        " Deck") mmsg -l "K";;
        " Center tile") mmsg -l "CT";;
        " Vertical tile") mmsg -l "VT";;
        " Right tile") mmsg -l "RT";;
        " Vertical Scroller") mmsg -l "VS";;
        " Vertical grid") mmsg -l "VG";;
        " Vertical deck") mmsg -l "VK";;
        " Tgmix") mmsg -l "TG";;

    esac
}


##########################
##Launches power submenu##
##########################

show_powerMenu() {
    powerMenu="󰌑 Go Back\n Lockscreen\n Restart\n⏻ Shutdown"
    navigationPowerMenu=$(echo -e "$powerMenu" | rofi -dmenu -p "Power Menu")

    case "$navigationPowerMenu" in
        "󰌑 Go Back")
            show_mainMenu;;
        *Lockscreen) hyprlock;;
        *Restart) reboot;;
        *Shutdown) shutdown now;;
    esac
}


###############
## Main menu ##
###############
show_mainMenu() {
mainMenu="󰀻 Apps\n Clipboard\n󱁇 Mango\n󰦭 Tools\n󰧮 Documentation\n󰘳 Keybinds\n Settings\n⏻ Power Menu"
## Selection
    navigation=$(echo -e "$mainMenu" | rofi -dmenu -p "Main Menu")
    case "$navigation" in
        *Apps) rofi -show-icons -show drun;;
        *Clipboard) clipcat-menu;;
        *Mango) show_mangoMenu;;
        *Tools) show_toolsMenu;;
        *Documentation) show_docsMenu;;
        #"󰌁 Color Picker") sleep 0.3 && hyprpicker -a;;
        *Keybinds) hyprctl dispatch exec [float]kitty less $HOME/.config/lostshell/keybinds.conf;;
        *Settings) show_settingsMenu;;
        "⏻ Power Menu") show_powerMenu;;
        esac
}

## Checking arguments
if [[ -n "$1" ]]; then
    case "$1" in
        mango) show_mangoMenu;;
        places) show_placesMenu;;
        docs) show_docsMenu;;
        settings) show_settingsMenu;;
        power) show_powerMenu;;
        tools) show_toolsMenu;;

    esac
    exit 0
fi

show_mainMenu
