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

  gtk = {
  enable = true;
  theme = {
    name = "Adwaita-dark"; # Or your preferred theme
    package = pkgs.gnome-themes-extra;
  };
};

# Force GTK4 to use the theme's CSS
  xdg.configFile."gtk-4.0/gtk.css".source = "${pkgs.gnome-themes-extra}/share/themes/Adwaita-dark/gtk-4.0/gtk.css";
  xdg.configFile."gtk-4.0/gtk-dark.css".source = "${pkgs.gnome-themes-extra}/share/themes/Adwaita-dark/gtk-4.0/gtk-dark.css";
  xdg.configFile."gtk-4.0/assets".source = "${pkgs.gnome-themes-extra}/share/themes/Adwaita-dark/gtk-4.0/assets";

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    config.common.default = "gtk";
  };
}
