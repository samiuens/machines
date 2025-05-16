{ pkgs, ... }:

with pkgs; [
  # nix stuff
  nixos-rebuild

  # ides
  jetbrains.idea-ultimate
  # jetbrains.pycharm-professional
  jetbrains.webstorm
  # jetbrains.goland
  vscode

  # developer frameworks
  nodejs_24
  zulu23
  typescript

  # global nodejs packages
  nodemon
  nodePackages_latest.ts-node
  nest-cli

  # package managers
  pnpm

  # terminal tools
  tmux

  # version control
  git
]
