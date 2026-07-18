{ config, lib, pkgs, ... }:

with lib;
{
  ## Options
  options.system.features = {
    plasma   = mkEnableOption "Interface KDE Plasma 6 e SDDM";
    labwc    = mkEnableOption "Compositor Labwc";
    hyprland = mkEnableOption "Compositor Hyprland e Hyprlock";
    niri     = mkEnableOption "Compositor Niri e Nautilus";

    millennium  = mkEnableOption "Steam com Millennium Steam";

    virtualbox  = mkEnableOption "VirtualBox com KVM";
    libvirtd    = mkEnableOption "Libvirtd QEMU/KVM";
    hamachi     = mkEnableOption "LogMeIn Hamachi";
    flatpak     = mkEnableOption "Suporte a Flatpak";
    appimage    = mkEnableOption "Suporte a AppImage via binfmt";
  };


  ## Always enabled services and configurations
  config = mkMerge [
    
    {
      # Network
      networking.networkmanager.enable = true;

      # Graphics
      hardware.graphics = {
        enable = true;
        enable32Bit = true;
      };

      # Display Manager Base e Teclado/Mouse
      services.xserver.enable = true;
      services.libinput.enable = true;
      programs.xwayland.enable = true;

      # QT
      qt.enable = true;
      qt.platformTheme = "kde";

      # Pipewire & Áudio
      services.pipewire = {
        enable = true;
        pulse.enable = true;
        alsa.enable = true;
      };

      programs.virt-manager.enable = true;

      services.openssh.enable = true;

      # Docker
      virtualisation.docker = {
        enable = true;
        daemon.settings = {
          "data-root" = "/home/lost/Projects/DockerRoot";
        };
      };

      # Bluetooth
      hardware.bluetooth.enable = true;

      # Misc & Integrações Essenciais
      hardware.i2c.enable = true;
      services.udisks2.enable = true;
      services.gvfs.enable = true;
      security.rtkit.enable = true;
      fonts.enableDefaultPackages = true;

      # Nix Garbage Collector e Otimização
      nix = {
        gc = {
          automatic = true;
          dates = [ "10:00" ];
          options = "--delete-older-than 3d";
        };
        settings.auto-optimise-store = true;
      };
    }

    # Optional services and configurations
    
    # KDE Plasma
    (mkIf config.system.features.plasma {
      services.displayManager.plasma-login-manager.enable = false;
      services.displayManager.sddm.enable = true;
      services.desktopManager.plasma6.enable = true;
      programs.kdeconnect.enable = true;
      security.pam.services.login.kwallet.enable = true;
      security.pam.services.sddm.kwallet.enable = true;
    })

    # Labwc
    (mkIf config.system.features.labwc {
      programs.labwc.enable = true;
    })

    # Hyprland
    (mkIf config.system.features.hyprland {
      programs.hyprland.enable = true;
      programs.hyprlock.enable = true;
    })

    # Niri
    (mkIf config.system.features.niri {
      programs.niri.enable = true;
      programs.niri.useNautilus = true;
    })

    # Millennium Steam
    (mkIf config.system.features.millennium {
      programs.steam = {
        enable = true;
        package = pkgs.millennium-steam;
      };
      programs.gamemode.enable = true;
    })

    (mkIf config.system.features.virtualbox {
      virtualisation.virtualbox.host.enableKvm = true;
    })

    (mkIf config.system.features.libvirtd {
      virtualisation.libvirtd.enable = true;
    })

    (mkIf config.system.features.hamachi {
      services.logmein-hamachi.enable = true;
      programs.haguichi.enable = true;
    })

    # Empacotamentos adicionais
    (mkIf config.system.features.flatpak {
      services.flatpak.enable = true;
    })

    (mkIf config.system.features.appimage {
      programs.appimage.enable = true;
      programs.appimage.binfmt = true;
    })
  ];
}