{ config, pkgs, ...}: {
  programs.vscode = {
    enable = true;

    mutableExtensionsDir = false;
    enableUpdateCheck = true;
    enableExtensionUpdateCheck = true;

    extensions = with pkgs.vscode-marketplace; [
      # visuals
      daltonmenezes.aura-theme
      pkief.material-icon-theme
      eamodio.gitlens

      # language support
      bbenoist.nix
      bradlc.vscode-tailwindcss
      
      # nuxt language pack
      vue.volar
      nuxtr.nuxtr-vscode
      nuxt.mdc
      antfu.goto-alias

      # formatting and ai
      esbenp.prettier-vscode
      github.copilot
      github.copilot-chat
    ];

    userSettings = {
      "workbench.colorTheme" = "Aura Dark";
      "workbench.iconTheme" = "material-icon-theme";
      "files.autoSave" = "onWindowChange";
      "editor.fontFamily" = "'JetBrains Mono'";
      "editor.defaultFormatter" = "esbenp.prettier-vscode";
      "editor.cursorBlinking" = "smooth";
      "editor.cursorSmoothCaretAnimation" = "on";
      "editor.cursorStyle" = "line-thin";
      "editor.formatOnSave" = true;
      "workbench.list.smoothScrolling" = true;
      "editor.smoothScrolling" = true;
      "terminal.integrated.smoothScrolling" = true;
      "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font'";
      "telemetry.telemetryLevel" = "off";
      "window.zoomLevel" = 1;
      "editor.fontSize" = 13;
    };
  };
}