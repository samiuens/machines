{ config, inputs, hostname, username, workname, platform, ... }: {
  imports =
    [
      inputs.brew.darwinModules.nix-homebrew
      inputs.home-manager.darwinModules.home-manager
      inputs.nixvim.nixDarwinModules.nixvim
      ./shared
      ./${hostname}
    ];
}
