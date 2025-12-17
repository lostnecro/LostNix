{ pkgs, lib, inputs, ... }:

{
  #Modules
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.default
  ];

  #Experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  #Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];

  #Hostname
  networking.hostName = "nixos";

  #Users
  users.users.lost = {
    isNormalUser = true;
    description = "Lost";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    packages = with pkgs; [];
  };

  #Home Manager
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "lost" = import ../../modules/homeManager/home.nix;
    };
  };

  #Unfree software
  nixpkgs.config.allowUnfree = true;

  #State version
  system.stateVersion = "25.05";
}