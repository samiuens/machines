{ username, workname, pkgs, currentUser, ... }: {
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
  system.primaryUser = "${currentUser}";
}