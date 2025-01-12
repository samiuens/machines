{ config, pkgs, ...}: {
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  documentation.nixos.enable = false;

  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
  
  environment.gnome.excludePackages = with pkgs; [
    gnome-photos
    gnome-tour
    cheese # webcam tool
    gnome-music
    epiphany # web browser
    geary # email reader
    gnome-characters
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    yelp # Help view
    gnome-contacts
    gnome-initial-setup
    totem # video player
    snapshot # camera app
    simple-scan # document scanner
    gnome-calendar
  ];

  environment.systemPackages = with pkgs.gnomeExtensions; [
    just-perfection
    pano
    top-bar-organizer
    caffeine
  ];
}