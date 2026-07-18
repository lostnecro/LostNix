{
  pkgs,
  ...
}:

{
  # System wide packages

  environment.systemPackages = with pkgs; [
    wget
    curl
    killall
    nettools
    kdePackages.bluedevil
    neovim
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
    cherry
    noto-fonts-cjk-sans
  ];
}
