{ pkgs, inputs, ... }:

{
  xdg.configFile = {
    "./ascii.txt".source = ./ascii.txt;
  };

  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        #type = "kitty";
        source = "$HOME/.config/ascii.txt";
      };
      padding = 2;
      modules = [
        "os"
        "host"
        "kernel"
        "datetime"
        "uptime"
        "break"
        "packages"
        "shell"
        "memory"
        "disk"
        "battery"
        "cpu"
        "cpu_usage"
        "gpu"
        "network"
        "locale"
      ];
    };
  };
}
