{ config, pkgs, ...}: {
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos
      ../../modules/shared
    ];
  networking.hostName = "tsukuyomi";
  system.stateVersion = "24.11";
}