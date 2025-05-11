{ ... }: 
  let currentUser = (builtins.getEnv "USER"); in 
  {
    system.defaults = {
      dock = {
        autohide = true;
        autohide-delay = 0.0;
        tilesize = 24;
        expose-group-apps = true;
        minimize-to-application = true;
        mru-spaces = false;
        show-recents = false;
        wvous-bl-corner = 1;
        wvous-br-corner = 1;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
        orientation = "bottom";
        persistent-apps = if(currentUser == "samiuensay") then [
          "/Applications/Arc.app"
          "/Applications/Todoist.app"
          "/Applications/Obsidian.app"
          "/Applications/Notion Calendar.app"
        ] else [
          "/Applications/Google Chrome.app"
          "/Applications/Cursor.app"
          "/Applications/GitKraken.app"
        ];
        persistent-others = [];
      };
    };
  }