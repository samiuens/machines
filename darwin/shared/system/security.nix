{ ... }: {
  security.pam.services.sudo_local.touchIdAuth = true;
  system.defaults = {
    SoftwareUpdate = { AutomaticallyInstallMacOSUpdates = true; };
    alf = {
      globalstate = 1;
      stealthenabled = 1;
    };
    loginwindow = {
      DisableConsoleAccess = true;
      GuestEnabled = true;
    };
    screensaver = {
      askForPassword = true;
      askForPasswordDelay = 0;
    };
  };
}