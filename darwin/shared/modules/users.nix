{ username, workname, pkgs, ... }: {
  users.users = {
    "${username}" = {
      description = "Sami Arda Ünsay";
      home = "/Users/${username}";
      isHidden = false;
      shell = pkgs.zsh;
    };

    "${workname}" = {
      description = "samiarda";
      home = "/Users/${workname}";
      isHidden = false;
      shell = pkgs.zsh;
    };
  };
}