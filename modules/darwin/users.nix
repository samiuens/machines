{ config, ...}: {
  users.users."samiarda" = {
    home = "/Users/samiarda";
  };
  home-manager.users."samiarda" = import ./home.nix;
}