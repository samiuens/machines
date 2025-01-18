{ config, ...}: {
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        accent-color = "teal";
        clock-show-weekday = true;
        clock-show-seconds = true;
      };
      "org/gnome/mutter" = {
        dynamic-workspaces = true;
        edge-tiling = true;
        center-new-windows = true;
      };
      "org/gnome/shell" = {
        favorite-apps = ["org.gnome.Nautilus.desktop" "firefox.desktop" "obsidian.desktop" "com.yubico.authenticator.desktop" "1password.desktop"];
        disable-user-extensions = false;
        enabled-extensions = ["caffeine@patapon.info" "just-perfection-desktop@just-perfection" "top-bar-organizer@julian.gse.jsts.xyz" "pano@elhan.io"];
      };
      "org/gnome/settings-daemon/plugins/color" = {
        night-light-schedule-automatic = false;
        night-light-schedule-from = 19.0;
        night-light-schedule-to = 6.25;
        night-light-temperature = 2700;
      };
      "org/gnome/shell/extensions/just-perfection" = {
        window-demands-attention-focus = true;
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
        picture-uri-dark = "file:///home/samiarda/Pictures/Wallpapers/abstract.jpg";
      };
    };
  };
}