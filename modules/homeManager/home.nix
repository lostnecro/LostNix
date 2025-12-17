{ config, pkgs, inputs, ... }:

{
  home.username = "lost";
  home.homeDirectory = "/home/lost";
  home.stateVersion = "25.11";

  home.packages = [
    
  ];

  home.file = {
    
  };

  imports = [
    ./globalHome.nix
    inputs.mangowc.hmModules.mango
  ];

  wayland.windowManager.mango = {
    enable = true;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
