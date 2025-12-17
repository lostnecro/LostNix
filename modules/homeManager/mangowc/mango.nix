{ ... }:

{
  wayland.windowManager.mango = {
    enable = true;
  };

  xdg.configFile = {
    "mango/autostart.sh".source = ./autostart.sh;
  };
}