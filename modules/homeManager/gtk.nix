{
  programs.dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      };
      cursorTheme = {
        package = pkgs.whitesur-cursors;
        name = "Afterglow-Recolored-Dracula-Purple";
      }
    };
  };
  environment.variables.XCURSOR_THEME = "Afterglow-Recolored-Dracula-Purple";
  pointerCursor.hyprcursor.enable = true;
}