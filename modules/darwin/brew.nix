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
    brews = [
      "git"
      "openssh"
    ];
    casks = pkgs.callPackage ./casks.nix {};
    masApps = {
      "iFinance 5" = 1500241909;
    };
  };
}