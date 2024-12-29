{ pkgs, ... }:

with pkgs; [
  # prod
  obsidian
  nextcloud-client

  # development
  vscode
  gitkraken
  
  # security
  yubioath-flutter
]