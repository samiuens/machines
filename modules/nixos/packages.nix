{ pkgs, ... }:

with pkgs; [
  # prod
  obsidian
  nextcloud-client

  # development
  gitkraken
  
  # security
  yubioath-flutter

  # misc
  git
]