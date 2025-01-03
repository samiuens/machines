{ config, pkgs, ...}: {
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos
      ../../modules/shared
    ];
  
  # mount 'shared' disk in pc
  boot.supportedFilesystems = [ "ntfs" ];
  fileSystems."/mnt/shared" =
  { device = "/dev/disk/by-uuid/185E15755E154D3E";
    fsType = "ntfs-3g"; 
    options = [ "rw" "uid=1000", "x-gvfs-show"];
  };

  networking.hostName = "tsukuyomi";
  system.stateVersion = "24.11";
}