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
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
}
