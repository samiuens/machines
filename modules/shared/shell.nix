{ config, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    #autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      machine = "cd ~/Code/machines && ./machines.sh $1";
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };

  programs.oh-my-posh = {
    enable = true;
    enableZshIntegration = true;
    useTheme = "spaceship";
  };

  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    icons = "always";
  };
}