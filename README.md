<div align="center">

# ❄️ My nixos config file

</div>

![NixOS Version](https://img.shields.io/badge/NixOS-unstable-blue?logo=nixos&logoColor=lightblue)
![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)

I'm just a starting developer

### Why NixOS? 

"It's not that complicated; it's truly reproducible and stable while remaining bleeding edge. It allows me to treat my OS like code."

LostNix/ \
├── flake.lock\
├── flake.nix\
├── hosts/\
│   └── laptop/\
│       ├── configuration.nix\
│       └── hardware-configuration.nix\
├── modules/\
│   ├── homeManager/\
│   │   ├── ascii.txt\
│   │   ├── fastfetch.nix\
│   │   ├── firefox.nix\
│   │   ├── flameshot.nix\
│   │   ├── flatpak.nix\
│   │   ├── git.nix\
│   │   ├── globalHome.nix\
│   │   ├── gnome.nix\
│   │   ├── gtk.nix\
│   │   ├── home.nix\
│   │   ├── hyprland/\
│   │   │   ├── binds.conf\
│   │   │   ├── boot.conf\
│   │   │   ├── config.conf\
│   │   │   ├── defaults.conf\
│   │   │   ├── env.conf\
│   │   │   ├── hyprland.conf\
│   │   │   ├── hyprlock.conf\
│   │   │   ├── monitor.conf\
│   │   │   ├── pyprland.toml\
│   │   │   └── rules.conf\
│   │   ├── hyprland.nix\
│   │   ├── lostshell/\
│   │   │   └── scripts/\
│   │   │       ├── connectAdb.sh\
│   │   │       ├── dmenu.sh\
│   │   │       ├── mango_ipc.sh\
│   │   │       ├── restartWaybar.sh\
│   │   │       └── wallpaper.sh\
│   │   ├── mangowc/\
│   │   │   ├── autostart.sh\
│   │   │   ├── binds.conf\
│   │   │   ├── config.conf\
│   │   │   ├── mango.nix\
│   │   │   └── style.conf\
│   │   ├── niri/\
│   │   │   ├── binds.kdl\
│   │   │   ├── boot.kdl\
│   │   │   ├── config.kdl\
│   │   │   ├── monitor.kdl\
│   │   │   ├── rules.kdl\
│   │   │   └── settings.kdl\
│   │   ├── niri.nix\
│   │   ├── qute.nix\
│   │   ├── scripts.nix\
│   │   ├── shell.nix\
│   │   ├── swww.nix\
│   │   ├── waybar/\
│   │   │   ├── config.jsonc\
│   │   │   └── style.css\
│   │   ├── waybar.nix\
│   │   ├── winapps/\
│   │   │   ├── basic.txt\
│   │   │   └── compose.yaml\
│   │   └── winapps.nix\
│   └── nixOs/\
│       ├── firewall.nix\
│       ├── globalNix.nix\
│       ├── globalPkgs.nix\
│       ├── locale.nix\
│       ├── nixvim.nix\
│       └── services.nix\
└── README.md\



To-do
- [x] Flake integration
- [x] Home-manager integration

