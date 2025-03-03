{ username, platform, lib, ... }: {
  nix = {
    enable = false;
    channel.enable = false;
  };
  nixpkgs = {
    config.allowUnfree = true;
    config.allowBroken = true;
    hostPlatform = lib.mkDefault "${platform}";
  };
  system.checks.verifyNixPath = false;
}
