{ config, ...}: {
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.users."samiarda".extraGroups = [ "vboxusers" ];
}