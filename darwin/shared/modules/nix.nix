{ username, platform, lib, ... }: {
  nix = {
    enable = true;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    channel.enable = false;
    settings.trusted-users = [ "@admin" ];
  };
  nixpkgs = {
    config.allowUnfree = true;
    config.allowBroken = true;
    hostPlatform = lib.mkDefault "${platform}";
  };
  system.checks.verifyNixPath = false;
}
