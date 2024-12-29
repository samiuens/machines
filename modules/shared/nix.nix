{ config, ...}: {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.trusted-users = [ "samiarda" ];
  nixpkgs.config.allowUnfree = true;
}