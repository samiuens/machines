{ config, pkgs, ...}: {
  programs.firefox.profiles.samiarda = {
    extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      onepassword-password-manager
      sidebery
      containerise
      ublock-origin
      sponsorblock
      darkreader
    ];
  };
}