{
  description = "A very basic flake";

  inputs = {
    mangowc.url = "github:DreamMaoMao/mangowc";
    mangowc.inputs.nixpkgs.follows = "nixpkgs";
    
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = { self, nixpkgs, mangowc, nixvim, ... } @ inputs:
  let

  in
  {
    nixosConfigurations = {
      "laptop" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          #hardware-configuration.nix already imported in configuration.nix
          ./hosts/laptop/configuration.nix
          mangowc.nixosModules.mango
          nixvim.nixosModules.nixvim
        ];
      };
    };
  };
}
