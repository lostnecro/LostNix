{ pkgs, lib, inputs, ... }:

{
  #Network
  networking.networkmanager.enable = true;

  #Graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true; #Important for Steam and other 32bit programs
  };

  #Display Manager
  services.xserver.enable = true;
  services.libinput.enable = true;
  services.displayManager.sddm.enable = true;

  #Niri
  programs.niri.enable = true;
  #programs.niri.package = pkgs.niri_git;

  #Plasma 6
  services.desktopManager.plasma6.enable = true;

  #MangoWC
  #programs.mangowc.enable = true;

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
    virtualisation.waydroid.enable = true;
    virtualisation.virtualbox.host.enableKvm = true;
    virtualisation.libvirtd.enable = true;


    #Flatpak
    services.flatpak.enable = true;

    #MPD
    services.mpd = {
    enable = true;
    musicDirectory = "/home/lost/Music/";
    startWhenNeeded = true;
    playlistDirectory = "/home/lost/Music/Playlist/";
    user = "lost";
    #extraConfig = ''
    #audio_output {
    #  type "pipewire"
    #  name "PipeWire Sound Server"
    #    }
    #'';
    };
    # Add this override to point MPD to your user's runtime directory
    systemd.services.mpd.environment = {
    # Replace 1000 with your actual UID if it differs
    XDG_RUNTIME_DIR = "/run/user/1000"; 
    };


    #Appimage
    programs.appimage.enable = true;
    programs.appimage.binfmt = true;

    #Manager external devices
    services.udisks2.enable = true;
    services.gvfs.enable = true;

    services.gnome.gnome-keyring.enable = true;
    security.pam.services.hyprland.enableGnomeKeyring = true;

    hardware.xpadneo.enable = true;

    services.udev.packages = with pkgs; [ 
    gnomeExtensions.gtk4-desktop-icons-ng-ding 
    ];

    #Dont lock when lid close
    services.logind.lidSwitchExternalPower = "ignore";

    #Nix garbage collector
    nix.gc = {
        automatic = true;
        dates = [ "10:00" ];
        options = "--delete-older-than 3d";
    };
    nix.autoOptimiseStore = true;
}
