{ ... }:

{
  xdg.configFile = {
    "./ascii.txt".source = ./ascii.txt;
    "./logo.png".source = ./logo.png;
  };

  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        #type = "kitty";
        source = "$HOME/.config/ascii.txt";
        #height = 30;
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
