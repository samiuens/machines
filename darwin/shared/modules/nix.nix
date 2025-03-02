{ username, platform, lib, ... }: {
  nix = {
    channel.enable = false;
    gc = {
      automatic = true;
      options = "--delete-older-than 7d";
      interval = { Weekday = 0; Hour = 0; Minute = 0; };
    };
    optimise = {
      automatic = true;
      interval = { Weekday = 0; Hour = 0; Minute = 0; };
    };
    settings = {
      allowed-users = [ "root" "${username}" ];
      trusted-users = [ "root" "${username}" ];
      experimental-features = "flakes nix-command";
      warn-dirty = false;
    };
  };
  nixpkgs = {
    config.allowUnfree = true;
    config.allowBroken = true;
    hostPlatform = lib.mkDefault "${platform}";
  };
  system.checks.verifyNixPath = false;
}
