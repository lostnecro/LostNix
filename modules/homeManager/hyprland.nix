{ pkgs, inputs, ... }:

{

    xdg.configFile = {
    "hypr/hyprland.conf".source = ./hyprland/hyprland.conf;
    "hypr/config.conf".source = ./hyprland/config.conf;
    "hypr/binds.conf".source = ./hyprland/binds.conf;
    "hypr/defaults.conf".source = ./hyprland/defaults.conf;
    "hypr/env.conf".source = ./hyprland/env.conf;
    "hypr/monitor.conf".source = ./hyprland/monitor.conf;
    "hypr/rules.conf".source = ./hyprland/rules.conf;
    "hypr/boot.conf".source = ./hyprland/boot.conf;
    "hypr/pyprland.toml".source = ./hyprland/pyprland.toml;
    };
}