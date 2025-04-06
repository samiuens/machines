{ config, inputs, hostname, username, platform, ... }: {
  imports =
    [
      inputs.brew.darwinModules.nix-homebrew
      inputs.home-manager.darwinModules.home-manager
      inputs.nixvim.nixDarwinModules.nixvim
      ./shared
      ./${hostname}
    ];
}
