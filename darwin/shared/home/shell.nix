{ ... }: {
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      history.size = 10000;

      shellAliases = {
        config = "cd ~/machines && ./run.sh $1";
        dev = "cd ~/dev";
      };
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" ];
      };
    };

    oh-my-posh = {
      enable = true;
      enableZshIntegration = true;
      #useTheme = "";
    };

    eza = {
      enable = true;
      enableZshIntegration = true;
      icons = "auto";
      colors = "auto";
    };
  };
}
