{ ... }:

{

  xdg.configFile = {
    "lostshell/scripts/connectAdb.sh".source = ./connectAdb.sh;
    "lostshell/scripts/dmenu.sh".source = ./dmenu.sh;
    "lostshell/scripts/restartWaybar.sh".source = ./restartWaybar.sh;
    "lostshell/scripts/wallpaper.sh".source = ./wallpaper.sh;
    "lostshell/scripts/mango_ipc.sh".source = ./mango_ipc.sh;
  };
}
