{ config, ...}: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;

    font = {
      name = "JetBrainsMono Nerd Font";
    };
  };
}