{ config, lib, inputs, ...}: {
  imports = [ inputs.lanzaboote.nixosModules.lanzaboote ];
  boot = {
    initrd.systemd.enable = true;
    loader.systemd-boot.enable = lib.mkForce true;
    lanzaboote = {
      enable = false;
      pkiBundle = "/etc/secureboot";
    };
  };
}
