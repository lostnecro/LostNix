{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.forge
    gnomeExtensions.desktop-icons-ng-ding
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.wellbeing-widget
    gnomeExtensions.veil
    gnomeExtensions.vertical-workspaces
    gnomeExtensions.user-themes
    gnomeExtensions.kimpanel
    gnomeExtensions.blur-my-shell
    gnomeExtensions.quick-lofi
    gnomeExtensions.brightness-control-using-ddcutil
    gnomeExtensions.tray-icons-reloaded
  ];

  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        # `gnome-extensions list` for a list
        enabled-extensions = [
          "caffeine@patapon.info"
          "user-theme@gnome-shell-extensions.gcampax.github.com"
          "dash-to-dock@micxgx.gmail.com"
          "blur-my-shell@aunetx"
          "trayIconsReloaded@selfmade.pl"
          "kimpanel@kde.org"
          "forge@jmmaranan.com"
          "vertical-workspaces@G-dH.github.com"
          "ding@rastersoft.com"
          "quick-lofi@eucaue"
          "clipboard-indicator@tudmotu.com"
          "veil@dagimg-dot"

        ];
      };
      "org/gnome/desktop/interface".show-battery-percentage = true;
    };
  };

  #gtk = {
  #enable = true;
  #theme = {
  #name = "Adwaita-dark"; # Or your preferred theme
  #package = pkgs.gnome-themes-extra;
  #};
  #};

  #xdg.portal = {
  #  enable = true;
  #  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  #  config.common.default = "gtk";
  #};
}
