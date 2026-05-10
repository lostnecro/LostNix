{
  pkgs,
  ...
}:

{
  # System wide packages

  environment.systemPackages = with pkgs; [

    #Utilities
    audacity
    planify
    gtk2
    gtk3
    klassy
    python314Packages.pyqt6
    wget
    curl
    brightnessctl
    distrobox
    e2fsprogs
    killall
    btop
    remmina
    alsa-tools
    alsa-firmware
    ntfs3g
    scrcpy
    wl-clipboard
    wev
    xwayland-satellite
    gnome-keyring
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
    kdePackages.polkit-kde-agent-1
    bluez
    ncdu
    zenity
    p7zip
    unzip
    unrar
    gdk-pixbuf
    imagemagick
    glibc
    firefox
    telegram-desktop
    xdg-desktop-portal-wlr
    xdg-desktop-portal-hyprland
    qpwgraph
    ocs-url
    libadwaita
    mariadb
    mysql84
    nil
    nixd
    awww
    nautilus
    gparted
    thunderbird
    easyeffects
    jamesdsp
    ungoogled-chromium
    kdePackages.applet-window-buttons6

    # WM Stuff
    rofi
    nwg-look
    satty
    grim
    slurp
    waybar
    pavucontrol
    ddcutil
    vicinae
    wl-gammactl
    dunst
    mpvpaper
    klassy
    kurve
    plasma-panel-colorizer
    plasma-overdose-kde-theme

    #Code
    bat
    python314
    pipx
    playwright
    git
    kitty
    vscode
    docker-compose
    lazydocker
    ghostty
    zed-editor

    #Emulators
    pcsx2
    snes9x
    ppsspp-sdl-wayland

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
    proton-vpn
    keepassxc
    hyprpolkitagent
    gh

    #Games
    hydralauncher
    protonup-ng
    protonup-qt
    wineWow64Packages.waylandFull
    winetricks
    heroic
    equibop
    gamemode
    kdePackages.bluedevil
    bluetui
    nettools
    prismlauncher
    #lutris
    blockbench
    millennium-steam

    #Entertainment
    mpv
    ani-cli

    #Creation
    kdePackages.kdenlive
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

    #Study
    tagainijisho

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

  services.logmein-hamachi.enable = true;
  programs.haguichi.enable = true;

  programs.steam = {
    enable = false;
    package = pkgs.millennium-steam;
  };
  programs.gamemode.enable = true;

  programs.virt-manager.enable = true;

  programs.cdemu.enable = true;
  #programs.seahorse.enable = true;

  services.openssh.enable = true;

}
