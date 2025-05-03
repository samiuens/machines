{ username, pkgs, ... }: {
  imports =
    [
      ../../apps/aerospace
      ../../apps/karabiner.nix
      ../../apps/kitty.nix
      ../../apps/ssh.nix
      ../shared/files.nix
      ../shared/shell.nix
    ];

  home = {
    username = "${username}";
    homeDirectory = "/Users/${username}";
    packages = pkgs.callPackage ../../packages.nix {};
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;
}
