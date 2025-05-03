{ hostname, username, workname, platform, pkgs, ... }: {
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users = {
    "${username}" = import ../home/${username} { inherit username pkgs; };
    "${workname}" = import ../home/${workname} { inherit workname pkgs; };
  };
  home-manager.backupFileExtension = "hm-backup";
  home-manager.extraSpecialArgs = {
    inherit hostname username workname platform;
  };
}
