{ config, ...}: {
  users.users."samiarda" = {
    home = "/Users/samiarda";
    isHidden = false;
  };
  home-manager.users."samiarda" = import ./home.nix;
}