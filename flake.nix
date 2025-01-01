{
  description = "samiarda's machine configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    darwin.url = "github:LnL7/nix-darwin";
    homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, darwin, homebrew, vscode-extensions, nur }: {
    nixosConfigurations.tsukuyomi = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./systems/tsukuyomi/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "hm-backup";
        }
        nur.modules.nixos.default
      ];
    };

    darwinConfigurations.amaterasu = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      specialArgs = { inherit inputs; };
      modules = [
        ./systems/amaterasu/configuration.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "hm-backup";
        }
        homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "samiarda";
          };
        }
      ];
    };
  };
}
