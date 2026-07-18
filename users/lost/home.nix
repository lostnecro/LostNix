{ config, pkgs, ... }:

{
  home.username = "lost";
  home.homeDirectory = "/home/lost";

  home.packages = with pkgs; [

  ];

  home.file = {

  };

  imports = [
    ./shell.nix
    ./packages.nix
    ./apps-config
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "25.11";
}
