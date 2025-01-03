{ pkgs, ... }:

with pkgs; [
  # misc
  git

  # programming languages
  nodejs
  corepack_latest
  pnpm
]