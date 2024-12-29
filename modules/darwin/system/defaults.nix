{ config, ...}: {
  system.defaults = {
    NSGlobalDomain = {
      # enable dark mode
      AppleInterfaceStyle = "Dark";
      # enable full keyboard ui mode
      AppleKeyboardUIMode = 3;
      # set scrollbar to jump to spot that's clicked
      AppleScrollerPagingBehavior = true;

      # disable automatic capitalization
      NSAutomaticCapitalizationEnabled = false;
      # disable smart period
      NSAutomaticPeriodSubstitutionEnabled = false;
      # disable spelling check
      NSAutomaticSpellingCorrectionEnabled = false;
      
      # use expanded save panel
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;

      # fast key mappings
      InitialKeyRepeat = 15;
      KeyRepeat = 2;
    };

    # automatic mac updates
    SoftwareUpdate.AutomaticallyInstallMacOSUpdates = true;

    WindowManager = {
      # disable click on desktop to show icons
      EnableStandardClickToShowDesktop = false;
      # hide desktop icons
      StandardHideDesktopIcons = true;
    };

    alf = {
      # enable firewall and "stealth mode"
      globalstate = 1;
      stealthenabled = 1;
    };

    dock = {
      # dock items
      persistent-apps = [];
      persistent-others = [];

      # hide dock with no delay
      autohide = true;
      autohide-delay = 0.0;
      # set tilesize to
      tilesize = 24;
      # hide recent apps in dock
      show-recents = false;
      # minimize windows into their application icon
      minimize-to-application = true;

      # group apps in mission control
      expose-group-apps = true;
      # disable automatic rearragment of spaces based on the most recent use
      mru-spaces = false;

      # disable ALL hot corners
      wvous-tl-corner = 1;
      wvous-tr-corner = 1;
      wvous-br-corner = 1;
      wvous-bl-corner = 1;
    };

    finder = {
      # show pathbar
      ShowPathbar = true;
      # default search to current folder
      FXDefaultSearchScope = "SCcf";
      # set 'list' as default view style
      FXPreferredViewStyle = "Nlsv";
      # show folders as first
      _FXSortFoldersFirst = true;
      _FXSortFoldersFirstOnDesktop = true;
      # new windows at 'nextcloud'
      # NewWindowTarget = "Other";
      # NewWindowTargetPath = "file:///Users/samiarda/Nextcloud";
    };

    CustomUserPreferences = {
      "NSGlobalDomain" = {
        # disable wallpaper tinting
        "AppleReduceDesktopTinting" = 1;
      };
      "com.apple.finder" = {
        # disable finder tabs
        "FinderSpawnTab" = false;
      };
      "com.apple.desktopservices" = {
        # avoid .DS_Store files on network or usb volumes
        "DSDontWriteNetworkStores" = true;
        "DSDontWriteUSBStores" = true;
      };
    };

    CustomSystemPreferences = {
      # disable photo app on device plug in
      "com.apple.ImageCapture" = { "disableHotPlug" = true; };
    };
  };
}
