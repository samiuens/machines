{ pkgs, ... }:

with pkgs; [
  # prod
  obsidian
  todoist-electron
  nextcloud-client

  # consume
  anki

  # create
  libreoffice-qt6-fresh
  hyphenDicts.de_DE

  # development
  gitkraken
  
  # security
  yubioath-flutter

  # remote management
  rustdesk-flutter

  # misc
  git
]