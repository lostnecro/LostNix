{ ... }:

{
  imports = [
    ./services.nix
    ./locale.nix
    ./firewall.nix
    ./globalPkgs.nix
    ./nixvim.nix
  ];
}
