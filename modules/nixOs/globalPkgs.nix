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
    glibc
    firefox
    telegram-desktop
    xdg-desktop-portal-wlr
    xdg-desktop-portal-hyprland
    qpwgraph
    nettools
    ocs-url
    libadwaita
    nil
    nixd
    awww
    nautilus
    gparted
    thunderbird
    easyeffects
    jamesdsp
    ungoogled-chromium
    kdePackages.bluedevil
    bluetui
    kitty

    # WM Stuff
    rofi
    nwg-look
    satty
    grim
    slurp
    waybar
    pavucontrol
    ddcutil
    wl-gammactl
    dunst
    mpvpaper

    #Code
    bat
    python314
    pipx
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
    protonup-qt
    wineWow64Packages.waylandFull
    winetricks
    heroic
    equibop
    prismlauncher

    #Entertainment
    mpv
    ani-cli

    #Creation
    kdePackages.kdenlive
    gimp
    blender
    audacity
    ffmpeg-full
    imagemagick
    carla

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

  services.openssh.enable = true;

}
