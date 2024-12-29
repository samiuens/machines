{ config, ...}: {
  imports =
    [
      ./programs/aerospace
      ./programs/ssh.nix
      
      ../shared/programs
      ../shared/files.nix
      ../shared/shell.nix
    ];
  
  home = {
    username = "samiarda";
    homeDirectory = "/Users/samiarda";
    stateVersion = "24.11";
    packages = pkgs.callPackage ./packages.nix {};
  };
  programs.home-manager.enable = true;
}