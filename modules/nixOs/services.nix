{
  pkgs,
  lib,
  inputs,
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
  services.displayManager.sddm.enable = true;
  #services.displayManager.gdm.enable = true;

  #Niri
  programs.niri.enable = true;

  #GNOME
  #services.desktopManager.gnome.enable = true;

  services.suwayomi-server = {
    enable = true;
    settings = {
      server.port = 4567;
      server.ip = "localhost";
    };
  };

  #Plasma 6
  services.desktopManager.plasma6.enable = true;
  programs.kde-pim = {
    enable = true;
    merkuro = true;
    kontact = true;
    kmail = true;
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
  services.pipewire.extraConfig.pipewire."99-combined-mic" = {
    "context.modules" = [
      {
        name = "libpipewire-module-loopback";
        args = {
          "node.description" = "YouTube Studio Mix";
          "capture.props" = {
            "media.class" = "Audio/Sink"; # This makes it show up as a set of speakers
            "node.name" = "studio_sink";
          };
          "playback.props" = {
            "media.class" = "Audio/Source"; # This makes the other end a microphone
            "node.name" = "studio_mic";
          };
        };
      }
    ];
  };

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

  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    }
  ];

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
