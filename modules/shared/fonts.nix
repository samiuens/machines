{ config, pkgs, ...}: {
  fonts.packages = with pkgs; [
    jetbrains-mono
    #(nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    nerd-fonts.jetbrains-mono
  ];
}