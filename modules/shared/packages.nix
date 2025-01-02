{ pkgs, ... }:

with pkgs; [
  # misc
  git

  # programming languages
  nodejs_23
  corepack_23
  pnpm

  jdk23
]