{ pkgs, ... }:

with pkgs; [
  # ides
  jetbrains.idea-ultimate
  jetbrains.pycharm-professional
  jetbrains.webstorm
  jetbrains.goland
  jetbrains.datagrip
  vscode

  # developer frameworks
  nodejs_23
  zulu23
  typescript

  # global nodejs packages
  nodemon
  nodePackages_latest.ts-node
  nest-cli

  # package managers
  fh
  pnpm

  # terminal tools
  tmux

  # version control
  git
]
