{ ... }:

{
  wayland.windowManager.mango = {
    enable = true;
  };

  xdg.configFile = {
    "mango/autostart.sh".source = ./autostart.sh;
    "mango/config.conf".source = ./config.conf;
    "mango/binds.conf".source = ./binds.conf;
  };
}