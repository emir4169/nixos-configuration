{
  description = "system flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  
  outputs = {nixpkgs, ...}: {
    nixosConfigurations = {
      hostname = "nixos" {
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}