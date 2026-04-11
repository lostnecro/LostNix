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

  hardware.i2c.enable = true;

  #Display Manager
  services.xserver.enable = true;
  services.libinput.enable = true;
  #services.displayManager.sddm.enable = true;
  services.displayManager.gdm.enable = true;

  #Niri
  programs.niri.enable = true;

  #Gnome
  services.desktopManager.gnome.enable = true;

  #Plasma 6
  services.desktopManager.plasma6.enable = false;
  programs.kde-pim = {
    enable = false;
    merkuro = true;
    kontact = false;
    kmail = false;
  };
  qt.enable = true;
  qt.platformTheme = "kde";

  #Mango
  programs.mango.enable = true;

  #Xwayland
  programs.xwayland.enable = true;

  security.rtkit.enable = true;

  #Pipewire
  services.pipewire.enable = true;
  services.pipewire.pulse.enable = true;
  services.pipewire.alsa.enable = true;
  services.pipewire.jack.enable = true;

  #bluetooth
  hardware.bluetooth.enable = true;

  #Docker
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

  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    }
  ];

  #Appimage
  programs.appimage.enable = true;
  programs.appimage.binfmt = true;

  #Manager external devices
  services.udisks2.enable = true;
  services.gvfs.enable = true;

  services.gnome.gnome-keyring.enable = true;
  security.pam.services.hyprland.enableGnomeKeyring = true;

  hardware.xpadneo.enable = true;

  #Nix garbage collector
  nix.gc = {
    automatic = true;
    dates = [ "10:00" ];
    options = "--delete-older-than 3d";
  };
  nix.settings.auto-optimise-store = true;
}
