{ username, pkgs, ... }: {
  imports =
    [
      ../../apps/aerospace
      #../../apps/sketchybar
      ../../apps/karabiner.nix
      ../../apps/kitty.nix
      ../../apps/linearmouse.nix
      ../../apps/ssh.nix
      ./ssh.nix
      ../shared/files.nix
      ../shared/git.nix
      ../shared/shell.nix
    ];

  home = {
    username = "${username}";
    homeDirectory = "/Users/${username}";
    packages = pkgs.callPackage ../../packages.nix {};
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
}
