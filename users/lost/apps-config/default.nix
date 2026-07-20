{ ... }:

{
  imports = [
    ./git.nix
    ./winapps/winapps.nix
    ./fastfetch.nix
    ./lostshell/scripts/scripts.nix
    ./niri/niri.nix
    ./waybar/waybar.nix
    ./stream.nix
    ./vim.nix
    ./kitty.nix
    ./qute.nix
  ];
}
