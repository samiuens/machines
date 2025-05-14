{ username, platform, lib, ... }: {
  nix = {
    channel.enable = false;
    linux-builder.enable = true;
    settings.trusted-users = [ "@admin" ];
  };
  nixpkgs = {
    config.allowUnfree = true;
    config.allowBroken = true;
    hostPlatform = lib.mkDefault "${platform}";
  };
  system.checks.verifyNixPath = false;
}
