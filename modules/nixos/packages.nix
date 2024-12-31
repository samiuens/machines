{ pkgs, ... }:

with pkgs; [
  # prod
  obsidian
  todoist-electron
  nextcloud-client

  # development
  gitkraken
  
  # security
  yubioath-flutter

  # misc
  git
]