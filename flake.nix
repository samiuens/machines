{
  description = "samiarda's machine configuration";

  inputs = {
    determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/0.1";
    fh.url = "https://flakehub.com/f/DeterminateSystems/fh/0";
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1.0.tar.gz";
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

  outputs = inputs@{ self, determinate, fh, nixpkgs, darwin, brew, home-manager, nixvim }: {
    darwinConfigurations = {
      "kaya" = darwin.lib.darwinSystem {
        specialArgs =
          {
            inherit inputs;
            hostname = "kaya";
            username = "samiuensay";
            platform = "aarch64-darwin";
          };
        modules = [
          ./darwin
        ];
      };
    };
  };
}
