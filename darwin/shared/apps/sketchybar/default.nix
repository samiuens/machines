{ config, ... }: {
  home.file."${config.xdg.configHome}/sketchybar" = {
    source = ./config;
  };
}