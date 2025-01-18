{ pkgs, inputs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
  shared-packages ++ [
    # organisation
    todoist-electron
    obsidian
    nextcloud-client

    # communication
    ferdium
    signal-desktop
    discord

    # creation
    flameshot
    libreoffice-qt6-fresh
    hyphenDicts.de_DE
    anki

    # capture
    zotero

    # consume

    # development
    gitkraken

    # security
    yubioath-flutter

    # system
    dconf-editor
  ]