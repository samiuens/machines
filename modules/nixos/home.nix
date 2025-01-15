{ config, pkgs, inputs, ...}: {
  imports =
    [
      ./gui/gnome

      ./programs/firefox.nix
      ./programs/ssh.nix

      ../shared/programs
      ../shared/files.nix
      ../shared/shell.nix
    ];
  
  home = {
    username = "samiarda";
    homeDirectory = "/home/samiarda";
    stateVersion = "24.11";
    packages = pkgs.callPackage ./packages.nix { inherit inputs; };
  };
  programs.home-manager.enable = true;
}