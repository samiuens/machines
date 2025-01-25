{ config, inputs, pkgs, ...}: {
  programs.kitty.enable = true;
  wayland.windowManager.hyprland.enable = true;
  home.sessionVariables.NIXOS_OZONE_WL = "1";

  wayland.windowManager.hyprland = {
    extraConfig =
      ''
        monitor = DP-3,3840x1080@144,auto,1
        
        exec-once = walker --gapplication-service
        exec-once = waybar
      '';
    settings = {
      "$mod" = "SUPER";

      input = {
        kb_layout = "de";
        kb_variant = "mac";
      };

      bind =
        [
          # general
          "$mod, W, closewindow, activewindow"

          # applications
          "$mod, F, exec, firefox"
          "$mod, T, exec, kitty"
          "$mod, space, execr, walker"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
          builtins.concatLists (builtins.genList (i:
              let ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
    };
  };
}