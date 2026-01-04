{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.forge
    gnomeExtensions.veil
    gnomeExtensions.tophat
    gnomeExtensions.pano
    gnomeExtensions.wtmb-window-thumbnails
    gnomeExtensions.gtk4-desktop-icons-ng-ding
    gnomeExtensions.desktop-icons-ng-ding
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.appindicator
  ];

  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        # `gnome-extensions list` for a list
        enabled-extensions = [
        "caffeine@patapon.info"
        "gtk4-ding@smedius.gitlab.com"
        "editdesktopfiles@dannflower"
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "dash-to-dock@micxgx.gmail.com"
        "blur-my-shell@aunetx"
        "trayIconsReloaded@selfmade.pl"
        "kimpanel@kde.org"
        "forge@jmmaranan.com"
        "vertical-workspaces@G-dH.github.com"
        
        ];
      };
      "org/gnome/desktop/interface".show-battery-percentage = true;
    };
  };
}
