{ config, pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      "nikitabobko/tap"
    ];
    brews = [
      "git"
      "openssh"
    ];
    casks = pkgs.callPackage ./casks.nix {};
    masApps = {
      #"Clipboard Manager - PastePal" = 1503446680;
      #"iFinance 5" = 1500241909;
    };
  };
}