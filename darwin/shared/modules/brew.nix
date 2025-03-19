{ username, platform, pkgs, ... }: {
  environment.variables.HOMEBREW_NO_ANALYTICS = "1";

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
      "openssh"
      "mas"
      "docker-compose"
      "mkcert"
      "nss" # certutil, required for firefox
      "flyctl"
    ];
    casks = pkgs.callPackage ../casks.nix {};
    masApps = {
      "iFinance 5" = 1500241909;
      "Amphetamine" = 937984704;
      "Velja" = 1607635845;
      "Bitwarden" = 1352778147;
    };
  };
  
  nix-homebrew = {
    enable = true;
    enableRosetta = if (platform == "aarch64-darwin") then true else false;
    autoMigrate = true;
    user = "${username}";
    mutableTaps = true;
  };
}
