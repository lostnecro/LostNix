{
  inputs,
  pkgs,
  ...
}:

{
  #Modules
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.default
    ../../modules/nixOs/globalNix.nix
  ];

  #Experimental features
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  #Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  boot.plymouth = {
    enable = true;
    theme = "lone";
    themePackages = with pkgs; [
      (adi1090x-plymouth-themes.override {
        selected_themes = [ "lone" ];
      })
    ];
  };

  #Silent Boot Setup
  boot.consoleLogLevel = 3;
  boot.initrd.verbose = false;

  boot.kernelParams = [
    "quiet"
    "splash"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
  ];

  #Hostname
  networking.hostName = "nixos";

  #Users
  users.users.lost = {
    isNormalUser = true;
    description = "Lost";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "libvirtd"
      "camera"
      "MPD"
    ];
  };

  #Home Manager
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "lost" = import ../../users/lost/home.nix;
    };
  };

  #Unfree software
  nixpkgs.config.allowUnfree = true;

  #State version
  system.stateVersion = "26.05";
}
