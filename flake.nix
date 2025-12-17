{
  description = "A very basic flake";

  inputs = {
    mangowc = {
      url = "github:DreamMaoMao/mangowc";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-software-center.url = "github:snowfallorg/nix-software-center";

  };

  outputs = { nixpkgs, mangowc, ... } @ inputs:
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
          
        ];
      };
    };
  };
}
