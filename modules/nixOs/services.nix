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
  services.displayManager.gdm.enable = true;

  #Desktop Environments
  programs.niri.enable = true;
  programs.mango.enable = true;
  programs.xwayland.enable = true;
  programs.hyprland.enable = true;

  #Gnome
  services.gnome.gnome-keyring.enable = true;
  programs.nm-applet.enable = true;
  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    }
  ];

  #QT
  qt.enable = true;
  qt.platformTheme = "kde";

  #Pipewire
  services.pipewire.enable = true;
  services.pipewire.pulse.enable = true;
  services.pipewire.alsa.enable = true;
  services.pipewire.jack.enable = true;

  #Clipboard
  services.clipcat.enable = true;

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
  security.pam.services.hyprland.enableGnomeKeyring = false;
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
