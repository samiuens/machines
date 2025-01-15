{ pkgs, inputs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
  shared-packages ++ [
    # organisation
    obsidian
    nextcloud-client

    # communication
    ferdium
    discord

    # creation
    flameshot
    libreoffice-qt6-fresh
    hyphenDicts.de_DE
    anki

    # capture
    zotero

    # consume
    inputs.zen-browser.packages."${system}".default

    # development
    gitkraken

    # security
    yubioath-flutter
  ]