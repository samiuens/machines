{ pkgs, ... }:

with pkgs; [
  # developer enviroments
  jetbrains.idea-community

  # misc
  git

  # programming languages
  nodejs_23
  corepack_23
  pnpm
  jdk23
]