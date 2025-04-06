{ username, pkgs, ... }: {
  imports =
    [
      ../apps/aerospace
      ../apps/firefox.nix
      ../apps/karabiner.nix
      ../apps/kitty.nix
      ../apps/nixvim.nix
      ../apps/ssh.nix
      ./files.nix
      ./shell.nix
    ];

  home = {
    username = "${username}";
    homeDirectory = "/Users/${username}";
    packages = pkgs.callPackage ../packages.nix {};
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;
}
