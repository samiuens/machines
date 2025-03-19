{ ... }: {
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
    '';
    /*matchBlocks = {
      "srv-prod-1" = {
        Host = "srv-prod-1";
        HostName = "srv-prod-1.samiuen.com";
        User = "samiarda";
        forwardAgent = false;
        identityFile = [ "" "" ];
    }*/
  };
}