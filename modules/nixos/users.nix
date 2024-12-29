{ config, ...}: {
  users.users."samiarda" = {
    isNormalUser = true;
    home = "/home/samiarda";
    extraGroups = [ "networkmanager" "wheel"];
  };
  home-manager.users."samiarda" = import ./home.nix;
}