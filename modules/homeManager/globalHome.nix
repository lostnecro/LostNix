{ config, pkgs, inputs, ... }:

{imports = [
    ./firefox.nix
    ./hyprland.nix
    ./waybar.nix
    ./scripts.nix
    ./shell.nix
    ./winapps.nix
    ./qute.nix
    ./fastfetch.nix
    #./swww.nix
    #./flameshot.nix
    ./niri.nix
    ./mangowc/mango.nix
    ./git.nix
    ./stream.nix
    #./gnome.nix
    #./flatpak.nix
    #./gtk.nix
];
}
