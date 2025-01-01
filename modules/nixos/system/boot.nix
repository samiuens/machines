{ config, ...}: {  
  #boot.loader.systemd-boot.enable = true;
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "nodev";
    efiSupport = true;
  };
  boot.loader.grub.useOSProber = true;
  boot.loader.efi.canTouchEfiVariables = true;
}