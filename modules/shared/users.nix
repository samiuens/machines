{ config, pkgs, ...}: {
  users.users."samiarda" = {
    description = "Sami Arda Ünsay";
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
  };
}