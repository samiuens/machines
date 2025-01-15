{
  description = "samiarda's machine configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    lanzaboote.url = "github:nix-community/lanzaboote";
    home-manager.url = "github:nix-community/home-manager";
    darwin.url = "github:LnL7/nix-darwin";
    homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs = inputs@{ self, nixpkgs, nixpkgs-darwin, lanzaboote, home-manager, darwin, homebrew, vscode-extensions, nur, zen-browser }: {
    nixosConfigurations.tsukuyomi = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      pkgs = import nixpkgs { 
        config.allowUnfree = true;
        system = "x86_64-linux";
        overlays = [
          inputs.vscode-extensions.overlays.default
        ];
      };

      specialArgs = { inherit inputs; };
      modules = [
        ./systems/tsukuyomi/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "hm-backup";
          home-manager.extraSpecialArgs = { inherit inputs; };
        }
        nur.modules.nixos.default
      ];
    };

    darwinConfigurations.amaterasu = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      pkgs = import nixpkgs-darwin { 
        config.allowUnfree = true;
        system = "aarch64-darwin";
        overlays = [
          inputs.vscode-extensions.overlays.default
        ];
      };

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
