{ config, pkgs, inputs, ... }:



{   #System wide packages

    environment.systemPackages = with pkgs; [

    #Utilities
    audacity
    gtk2
    gtk3
    klassy
    python314Packages.pyqt6
    chromium
    ardour
    wget
    dconf-editor
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
    #xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.polkit-kde-agent-1
    linux-wallpaperengine
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
    cliphist
    wl-clip-persist
    qpwgraph
    ocs-url
    gearlever
    nautilus
    loupe
    obsidian
    libadwaita
    yt-dlp
    media-downloader
    deno
    gnome-tweaks
    mariadb
    mysql84

    # WM Stuff
    rofi
    nwg-look
    pyprland
    satty
    grim
    slurp
    quickshell
    waybar
    pavucontrol
    hypridle

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
    zsnes2

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
    #vesktop
    equibop
    #vencord
    #discord
    gamemode
    overlayed
    kdePackages.bluedevil
    bluetui
    mpvpaper
    nettools
    prismlauncher
    lutris

    #Entertainment
    mpv
    ani-cli
    dunst

    #Creation
    kdePackages.kdenlive
    gimp
    inkscape
    blender
    audacity
    ffmpeg
    imagemagick
    carla

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

    #programs.waybar.enable = true;

    programs.steam = {
      enable = true;
      #protontricks.enable = true;
      gamescopeSession.enable = true;
    };
    programs.gamemode.enable = true;

    programs.kdeconnect.enable = true;
    services.espanso = {
      enable = false;
      package = pkgs.espanso-wayland;
    };

    programs.labwc.enable = true;
    programs.mango.enable = true;
    programs.xwayland.enable = true;

    programs.virt-manager.enable = true;

    programs.thunderbird.enable = true;


    programs.cdemu.enable = true;
    #programs.seahorse.enable = false;

    services.openssh.enable = true;

    nixpkgs.overlays = [
    (final: prev: {
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
