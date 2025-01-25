{ inputs, pkgs, ... }: {
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    walker
    dunst
    hyprpolkitagent
    waybar
  ];

  services.dunst.enable = true;
}