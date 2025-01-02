{ pkgs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
  shared-packages ++ [
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
  keepassxc

  # remote management
  rustdesk-flutter
]