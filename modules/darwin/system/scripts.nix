{ config, pkgs, ...}: {
  system.activationScripts.applications.text = pkgs.lib.mkForce (''
      echo "setting up ~/Applications/Nix..."
      rm -rf ~/Applications/Nix
      mkdir -p ~/Applications/Nix
      chown ${config.home.username} ~/Applications/Nix
      find ${config.system.build.applications}/Applications -maxdepth 1 -type l | while read f; do
        src="$(/usr/bin/stat -f%Y $f)"
        appname="$(basename $src)"
        osascript -e "tell app \"Finder\" to make alias file at POSIX file \"/Users/${config.home.username}/Applications/Nix/\" to POSIX file \"$src\" with properties {name: \"$appname\"}";
    done
  '');
}