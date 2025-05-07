{ workname, pkgs, ... }: {
  imports =
    [
      ../../apps/aerospace
      ../../apps/karabiner.nix
      ../../apps/kitty.nix
      ../../apps/linearmouse.nix
      ../../apps/ssh.nix
      ../shared/git.nix
      ../shared/shell.nix
    ];

  home = {
    username = "${workname}";
    homeDirectory = "/Users/${workname}";
    packages = pkgs.callPackage ../../packages.nix {};
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;
}
