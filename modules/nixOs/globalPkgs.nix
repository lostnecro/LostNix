{
  pkgs,
  ...
}:

{
  # System wide packages

  environment.systemPackages = with pkgs; [

    #Utilities
    wget
    curl
    brightnessctl
    distrobox
    killall
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
    nettools
    ocs-url
    nil
    nixd
    thunderbird
    jamesdsp
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
    gh

    #Games
    hydralauncher
    protonup-qt
    wineWow64Packages.waylandFull
    winetricks
    heroic
    equibop
    prismlauncher

    #Emulators
    pcsx2
    ppsspp-sdl-wayland

    #Entertainment
    mpv
    ani-cli

    #Creation
    kdePackages.kdenlive
    gimp
    blender

    #Stream
    obs-studio-plugins.obs-vkcapture
    obs-studio-plugins.obs-multi-rtmp
    obs-cmd
    obs-cli

    #Study
    obsidian
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
