{ pkgs, inputs, ... }:

{

    xdg.configFile = {
    "lostshell/scripts/connectAdb.sh".source = ./lostshell/scripts/connectAdb.sh;
    "lostshell/scripts/dmenu.sh".source = ./lostshell/scripts/dmenu.sh;
    "lostshell/scripts/restartWaybar.sh".source = ./lostshell/scripts/restartWaybar.sh;
    "lostshell/scripts/wallpaper.sh".source = ./lostshell/scripts/wallpaper.sh;
    };
}