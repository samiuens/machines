{ config, ...}: 

let 
  nextDnsProfileId = "2ae161";
in { 
  services.resolved = {
    #enable = true;
    enable = false;
    extraConfig = ''
      [Resolve]
      DNS=45.90.28.0#${config.networking.hostName}-${nextDnsProfileId}.dns.nextdns.io
      DNS=2a07:a8c0::#${config.networking.hostName}-${nextDnsProfileId}.dns.nextdns.io
      DNS=45.90.30.0#${config.networking.hostName}-${nextDnsProfileId}.dns.nextdns.io
      DNS=2a07:a8c1::#${config.networking.hostName}-${nextDnsProfileId}.dns.nextdns.io
      DNSOverTLS=yes
    '';
  };

  services.yubikey-agent.enable = true;
  services.pcscd.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}