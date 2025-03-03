{ config, pkgs, ... }: {
  home.file.".config/karabiner/karabiner.json" = {
    source = ../../../configs/karabiner/karabiner.json;
    recursive = true;
  };
}