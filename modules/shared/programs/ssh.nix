{ config, ...}: {
  programs.ssh = {
    enable = true;
    forwardAgent = true;
    matchBlocks = {
      "github.com" = {
        identitiesOnly = true;
        identityFile = "${config.home.homeDirectory}/.ssh/github-29165650";
        #identityFile = "${config.home.homeDirectory}/.ssh/github-29166669";
      };
    };
  };
}