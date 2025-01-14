{ pkgs }:

with pkgs;
let shared-packages = import ../shared/packages.nix { inherit pkgs; }; in
  shared-packages ++ [
    # prod
    obsidian
    todoist-electron
    nextcloud-client

    # communication
    tutanota-desktop
    ferdium

    # create
    flameshot
    xournalpp
    libreoffice-qt6-fresh
    hyphenDicts.de_DE
    
    # development
    gitkraken

    # education
    anki

    # security
    yubioath-flutter

    # utilities
    sbctl
    dconf-editor
  ]