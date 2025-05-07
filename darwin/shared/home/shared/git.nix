{ config, ... }: {
  programs.git = {
    userName = "Sami Arda Ünsay";
    extraConfig = {
      init.defaultBranch = "main";
      safe = {
        directory = "~/machines";
      };
    };
  };
}