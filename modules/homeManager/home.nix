{ config, pkgs, inputs, ... }:

{
  home.username = "lost";
  home.homeDirectory = "/home/lost";
  home.stateVersion = "25.11";

  home.packages = [
    
  ];

  home.file = {
    
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  imports = [
    ./globalHome.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
