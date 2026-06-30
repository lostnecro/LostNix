{
  ...
}:

{
  #Network
  networking.networkmanager.enable = true;

  #Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true; # Important for Steam and other 32bit programs
  };

  #Display Manager
  services.xserver.enable = true;
  services.libinput.enable = true;

  #Plasma
  services.displayManager.plasma-login-manager.enable = true;
  services.desktopManager.plasma6.enable = true;
  programs.kdeconnect.enable = true;

  #Hyprland
  programs.hyprland.enable = true;

  #Desktop Environments
  programs.xwayland.enable = true;

  #QT
  qt.enable = true;
  qt.platformTheme = "kde";

  #Pipewire
  services.pipewire.enable = true;
  services.pipewire.pulse.enable = true;
  services.pipewire.alsa.enable = true;

  #bluetooth
  hardware.bluetooth.enable = true;

  #Virtualization
  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      "data-root" = "/home/lost/Projects/DockerRoot";
    };
  };
  virtualisation.virtualbox.host.enableKvm = true;
  virtualisation.libvirtd.enable = true;

  #Flatpak
  services.flatpak.enable = true;

  #Appimage
  programs.appimage.enable = true;
  programs.appimage.binfmt = true;


  #Misc
  hardware.i2c.enable = true;
  services.udisks2.enable = true;
  services.gvfs.enable = true;
  security.rtkit.enable = true;

  #Nix garbage collector
  nix.gc = {
    automatic = true;
    dates = [ "10:00" ];
    options = "--delete-older-than 3d";
  };
  nix.settings.auto-optimise-store = true;
}
