{ config, ...}: {
  users.users."samiarda" = {
    home = "/home/samiarda";
    extraGroups = [ "networkmanager" "wheel"];
  };
  home-manager.users."samiarda" = import ./home.nix;
}