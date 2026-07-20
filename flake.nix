{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    millennium.url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
    millennium.inputs.nixpkgs.follows = "nixpkgs";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs =
    {
      self,
      nixpkgs,
      millennium,
      nixvim,
      home-manager,
      ...
    }@inputs:
    let
      
    in
    {
      nixosConfigurations = {
        "laptop" = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            #hardware-configuration.nix already imported in configuration.nix
            ./hosts/laptop/configuration.nix

            home-manager.nixosModules.home-manager{
              home-manager.extraSpecialArgs = { inherit inputs; };
            }
            
            {
              nixpkgs.overlays = [ inputs.millennium.overlays.default ];
              
            }
          ];
        };
      };
    };
}
