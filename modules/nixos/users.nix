{ config, ...}: {
  users.users."samiarda" = {
    isNormalUser = true;
    home = "/home/samiarda";
    extraGroups = [ "networkmanager" "wheel" "vboxusers" ];
    uid = 1000;
  };
  home-manager.users."samiarda" = import ./home.nix;
}