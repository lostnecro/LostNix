{ pkgs, lib, inputs, ... }:

{
  imports = [
    ./services.nix
    ./locale.nix
    ./firewall.nix
  ];
}