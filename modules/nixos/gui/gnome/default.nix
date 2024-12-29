{ config, ...}: {
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        clock-show-weekday = true;
        clock-show-seconds = true;
      };
      "org/gnome/mutter" = {
        dynamic-workspaces = true;
        edge-tiling = true;
        center-new-windows = true;
      };
      "org/gnome/shell" = {
        favorite-apps = ["org.gnome.Nautilus.desktop" "firefox.desktop" "todoist.desktop" "obsidian.desktop" "thunderbird.desktop" "Alacritty.desktop" "com.yubico.authenticator.desktop" "1password.desktop"];
        disable-user-extensions = false;
        enabled-extensions = ["system-monitor@gnome-shell-extensions.gcampax.github.com" "pano@elhan.io"];
      };
      "org/gnome/shell/extensions/system-monitor" = {
        show-swap = false;
      };
      "org/gnome/shell/extensions/pano" = {
        history-length = 150;
        play-audio-on-copy = false;
        send-notification-on-copy = false;
        window-position = 1;
      };
      "org/gnome/nautilus/list-view" = { use-tree-view = false; };
      "org/gnome/nautilus/preferences" = { default-folder-viewer = "list-view"; };
      "org/gnome/desktop/background" = {
        "picture-uri-dark" = "file:///home/samiarda/Pictures/Wallpapers/red_distortion_3.jpg";
        "primary-color" = "#26a269";
      };
    };
  };
}