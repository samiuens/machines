{ config, ...}: {
  programs.ssh = {
    enable = true;
    forwardAgent = true;
    matchBlocks = {
      "github.com" = {
        forwardAgent = false;
        identitiesOnly = true;
        identityFile = "${config.home.homeDirectory}/.ssh/github-29165650";
        #identityFile = "${config.home.homeDirectory}/.ssh/github-29166669";
      };
      "srv-prod-1" = {
        user = "samiarda";
        hostname = "10.10.0.55";
        forwardAgent = false;
        identitiesOnly = true;
        identityFile = "${config.home.homeDirectory}/.ssh/srv-prod-1-29166650";
      };
    };
  };
}