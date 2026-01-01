{ config, pkgs, inputs, ... }:


    
{   #System wide packages

    environment.systemPackages = with pkgs; [
    
    #Utilities
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
    nautilus
    xwayland-satellite
    gnome-keyring
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.polkit-kde-agent-1
    bluez
    parabolic
    kdePackages.kdepim-addons
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
    wl-clipboard
    firefox
    telegram-desktop
    xdg-desktop-portal-wlr
    cliphist
    wl-clip-persist
    copyq
    ungoogled-chromium
    qpwgraph
    ocs-url
    gearlever
    loupe
    obsidian
    
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
    
    #Code
    bat
    python314
    pipx
    playwright
    git
    #neovim
    kitty
    vscode
    zed
    docker-compose
    lazydocker
    ghostty
    android-studio
    android-studio-tools
    android-tools
    #jetbrains.pycharm-community-bin

    #Emulators
    pcsx2
    rpcs3
    snes9x
    retroarch-full
    ppsspp-qt
    #duckstation

    #Rice
    nerd-fonts.ubuntu
    hachimarupop
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
    vesktop
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
    ];

    #Fonts
    fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    noto-fonts
    fira-code-symbols
    ipafont
    nerd-fonts.jetbrains-mono

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

    programs.obs-studio.enable = true;

    programs.kdeconnect.enable = true;
    services.espanso = {
      enable = true;
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
