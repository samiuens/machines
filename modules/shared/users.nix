{ config, pkgs, ...}: {
  users.users."samiarda" = {
    description = "Sami Arda Ünsay";
    isHidden = false;
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
  };
}