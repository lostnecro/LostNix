{
  pkgs,
  ...
}:

{
  # System wide packages

  environment.systemPackages = with pkgs; [

    #Utilities
    audacity
    gtk2
    gtk3
    klassy
    python314Packages.pyqt6
    wget
    curl
    brightnessctl
    distrobox
    distroshelf
    e2fsprogs
    killall
    btop
    remmina
    alsa-tools
    alsa-firmware
    ntfs3g
    kdePackages.dolphin
    scrcpy
    wl-clipboard
    wev
    brave
    onlyoffice-desktopeditors
    libreoffice-qt6-fresh
    xwayland-satellite
    gnome-keyring
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.polkit-kde-agent-1
    bluez
    kdePackages.kdepim-addons
    kdePackages.kdepim-runtime
    kdePackages.akonadi-search
    kdePackages.akonadi-calendar
    kdePackages.akonadi-mime
    kdePackages.kcalendarcore
    kdePackages.kcontacts
    ncdu
    pulseeffects-legacy
    baobab
    zenity
    p7zip
    unzip
    unrar
    gdk-pixbuf
    imagemagick
    euphonica
    ncmpcpp
    qutebrowser
    glibc
    firefox
    telegram-desktop
    xdg-desktop-portal-wlr
    xdg-desktop-portal-hyprland
    qpwgraph
    ocs-url
    gearlever
    obsidian
    libadwaita
    yt-dlp
    media-downloader
    deno
    mariadb
    mysql84
    nil
    nixd
    swww
    kurve
    plasma-panel-colorizer

    # WM Stuff
    rofi
    nwg-look
    satty
    grim
    slurp
    waybar
    pavucontrol
    hypridle
    ddcutil
    wl-gammactl

    #Code
    bat
    python314
    pipx
    playwright
    git
    kitty
    vscode
    zed
    docker-compose
    lazydocker
    ghostty
    android-studio
    android-studio-tools
    android-tools
    zed-editor

    #Emulators
    pcsx2
    rpcs3
    snes9x
    ppsspp-qt
    retroarch

    #Rice
    nerd-fonts.ubuntu
    hachimarupop
    inter-nerdfont
    whitesur-gtk-theme
    whitesur-icon-theme
    whitesur-cursors
    whitesur-kde
    waypaper
    afterglow-cursors-recolored
    mint-cursor-themes
    graphite-cursors
    posy-cursors
    hackneyed
    bibata-cursors-translucent
    pokemon-cursor
    marwaita-icons
    gruvbox-plus-icons
    catppuccin-kvantum
    kdePackages.qtstyleplugin-kvantum

    #Privacy/Security
    protonvpn-gui
    keepassxc
    hyprpolkitagent
    gh

    #Games
    hydralauncher
    protonup-ng
    protonup-qt
    wineWowPackages.waylandFull
    winetricks
    heroic
    equibop
    gamemode
    overlayed
    kdePackages.bluedevil
    bluetui
    mpvpaper
    nettools
    prismlauncher
    lutris
    blockbench
    steamcmd

    #Entertainment
    mpv
    ani-cli
    dunst

    #Creation
    #kdePackages.kdenlive
    gimp
    inkscape
    blender
    audacity
    ffmpeg-full
    imagemagick
    carla
    ardour

    #Stream
    obs-studio-plugins.obs-vkcapture
    obs-studio-plugins.obs-multi-rtmp
    obs-cmd
    obs-cli

  ];

  #Fonts
  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    noto-fonts
    fira-code-symbols
    ipafont
    nerd-fonts.jetbrains-mono
    minecraftia

  ];
  fonts.enableDefaultPackages = true;

  programs.hyprlock.enable = true;

  programs.steam = {
    enable = true;
    package = pkgs.millennium-steam;
  };
  programs.gamemode.enable = true;

  programs.kdeconnect.enable = true;
  services.espanso = {
    enable = false;
    package = pkgs.espanso-wayland;
  };

  programs.virt-manager.enable = true;

  programs.cdemu.enable = true;
  #programs.seahorse.enable = true;

  services.openssh.enable = true;

  nixpkgs.overlays = [
    (final: prev: {
      # --- Parte existente: Python ---
      pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
        (python-final: python-prev: {
          pyrate-limiter = python-prev.pyrate-limiter.overridePythonAttrs (oldAttrs: {
            doCheck = false;
          });
        })
      ];

    })
  ];

}
