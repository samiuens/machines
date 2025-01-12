{ config, ...}: {
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };
  users.users."samiarda".extraGroups = [ "docker" ];
}