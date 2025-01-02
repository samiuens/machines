{ config, pkgs, ...}: 
  let
    username = "samiarda";
  in {
    system.activationScripts.applications.text = pkgs.lib.mkForce (''
        echo "setting up ~/Applications/Nix..."
        rm -rf ~/Applications/Nix
        mkdir -p ~/Applications/Nix
        chown ${username} ~/Applications/Nix
        find ${config.system.build.applications}/Applications -maxdepth 1 -type l | while read f; do
          src="$(/usr/bin/stat -f%Y $f)"
          appname="$(basename $src)"
          osascript -e "tell app \"Finder\" to make alias file at POSIX file \"/Users/${username}/Applications/Nix/\" to POSIX file \"$src\" with properties {name: \"$appname\"}";
      done
    '');
  }