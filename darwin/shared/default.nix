{ currentUser, ... }: 
  {
    imports =
      [
        ./modules/brew.nix
        ./modules/fonts.nix
        ./modules/hm.nix
        ./modules/nix.nix
        ./modules/time.nix
        ./modules/users.nix

        #./overlays

        ./system/appearance.nix
        ./system/custom.nix
        ./system/desktop.nix
        ./system/dock/default.nix
        ./system/dock/${currentUser}.nix
        ./system/finder.nix
        ./system/input.nix
        ./system/loginwindow.nix
        ./system/networking.nix
        ./system/security.nix
      ];
    }
