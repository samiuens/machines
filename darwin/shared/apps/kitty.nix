{ ... }: {
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 14;
    };
    settings = {
      cursor_shape = "underline";
      tab_bar_edge = "top";
      tab_bar_style = "slant";
    };
  };
}