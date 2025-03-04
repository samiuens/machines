{ config, pkgs, ... }: {
  /*home.file."Pictures/wallpapers" = {
    source = ../../../data/wallpaper;
    recursive = true;
  };*/
  
  home.file."dev/openjdk" = {
    source = pkgs.zulu23;
    recursive = true;
  };
}