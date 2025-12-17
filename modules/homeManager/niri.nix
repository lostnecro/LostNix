{ pkgs, inputs, ... }:

{

    xdg.configFile = {
    "niri/config.kdl".source = ./niri/config.kdl;
    "niri/binds.kdl".source = ./niri/binds.kdl;
    "niri/boot.kdl".source = ./niri/boot.kdl;
    "niri/settings.kdl".source = ./niri/settings.kdl;
    "niri/monitor.kdl".source = ./niri/monitor.kdl;
    "niri/rules.kdl".source = ./niri/rules.kdl;
    };
}