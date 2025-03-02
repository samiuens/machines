{ pkgs, inputs, ... }: {
  nixpkgs.overlays =
    [
      inputs.firefox-darwin.overlay
    ];
}