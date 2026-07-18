{ pkgs, ... }:

{
  home.packages = with pkgs; [

    ## --- Utilities ---
    brightnessctl
    distrobox
    btop
    remmina
    wl-clipboard
    wev
    xwayland-satellite
    bluez
    ncdu
    p7zip
    unzip
    unrar
    firefox
    telegram-desktop
    qpwgraph
    ocs-url
    nil
    nixd
    thunderbird
    bluetui
    kitty
    freerdp
    dialog
    iproute2
    libnotify
    netcat-openbsd
    kdePackages.kwallet-pam
    kdePackages.kwallet
    kdePackages.kwalletmanager
    networkmanagerapplet
    kdePackages.krohnkite
    awww
    playerctl
    yt-dlp
    nautilus
    sushi

    ## --- WM Stuff ---
    rofi
    nwg-look
    satty
    grim
    slurp
    waybar
    pavucontrol
    wl-gammactl
    dunst

    ## --- Code ---
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

    ## --- Rice ---
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
    edukai
    wqy_zenhei
    eduli
    moeli
    kdePackages.kalk
    kdePackages.kget

    ## --- Privacy/Security ---
    proton-vpn
    keepassxc

    ## --- Games ---
    hydralauncher
    protonup-qt
    wineWow64Packages.waylandFull
    winetricks
    heroic
    equibop
    prismlauncher

    ## --- Emulators ---
    pcsx2
    ppsspp-sdl-wayland

    ## --- Entertainment ---
    mpv
    ani-cli

    ## --- Creation ---
    kdePackages.kdenlive
    gimp
    blender

    ## --- Stream ---
    obs-studio-plugins.obs-vkcapture
    obs-studio-plugins.obs-multi-rtmp
    obs-cmd
    obs-cli

    ## --- Study ---
    obsidian
    anki
  ];
}