{ config, pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      "buo/cask-upgrade"
      "nikitabobko/tap"
    ];
    brews = [];
    casks = pkgs.callPackage ./casks.nix {};
    masApps = {};
  };
}