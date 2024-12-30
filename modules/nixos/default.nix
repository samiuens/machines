{ ... }: {
  imports =
    [
      ./programs/1password.nix
      ./programs/coolercontrol.nix
      
      ./system/bluetooth.nix
      ./system/boot.nix
      ./system/gnome.nix
      ./system/locale.nix
      ./system/networking.nix
      ./system/print.nix
      ./system/security.nix
      ./system/sound.nix
      
      ./users.nix
    ];
}