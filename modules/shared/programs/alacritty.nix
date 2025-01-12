{ config, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      cursor.style = {
        shape = "Underline";
        blinking = "On";
      };
      font = {
				normal = {
					family = "JetBrainsMono Nerd Font";
					style = "Regular";
				};
				bold = {
					family = "JetBrainsMono Nerd Font";
					style = "Bold";
				};
				italic = {
					family = "JetBrainsMono Nerd Font";
					style = "Italic";
				};
				size = 12;
			};
    };
  };
}