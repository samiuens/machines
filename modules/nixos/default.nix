{ ... }: {
  imports =
    [
      ./system/bluetooth.nix
      ./system/boot.nix
      ./system/gnome.nix
      ./system/networking.nix
      ./system/print.nix
      ./system/sound.nix

      ./security.nix
      ./users.nix
    ];
}