{
  description = "samiarda's machine configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    darwin = {
      url = "github:LnL7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    brew.url = "github:zhaofengli-wip/nix-homebrew";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, darwin, brew, home-manager, nixvim }: {
    darwinConfigurations = {
      "kaya" = darwin.lib.darwinSystem {
        specialArgs =
          {
            inherit inputs;
            hostname = "kaya";
            username = "samiuensay";
            workname = "samiarda";
            platform = "aarch64-darwin";
          };
        modules = [
          ./darwin
        ];
      };
    };
  };
}