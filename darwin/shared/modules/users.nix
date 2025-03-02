{ username, pkgs, ... }: {
  users.users.${username} = {
    description = "Sami Arda Ünsay";
    home = "/Users/${username}";
    isHidden = false;
    shell = pkgs.zsh;
  };
}