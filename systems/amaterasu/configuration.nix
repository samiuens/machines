{ config, pkgs, ...}: {
  imports =
    [
      ../../modules/darwin
      ../../modules/shared
    ];
  
  networking.hostName = "amaterasu";
  networking.computerName = "Mac von Sami Arda";
  #system.defaults.smb.NetBIOSName = "amaterasu";

  system.stateVersion = 5;
  nixpkgs.hostPlatform = "aarch64-darwin"; 
}