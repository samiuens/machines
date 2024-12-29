{ config, pkgs, ...}: {
  imports =
    [
      ../../modules/nixos
      ../../modules/shared
    ];
  networking.hostName = "tsukuyomi";
  system.stateVersion = "24.11";
}