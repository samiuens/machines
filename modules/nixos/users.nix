{ config, ...}: {
  users.users."samiarda" = {
    home = "/home/samiarda";
  };
  home-manager.users."samiarda" = import ./home.nix;
}