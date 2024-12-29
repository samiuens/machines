{ config, ...}: {
  home.file = {
    "Pictures/Wallpapers".source = ../../data/wallpapers;
    "Pictures/aegis-icons.zip".source = ../../data/aegis-icons.zip;
  };
}