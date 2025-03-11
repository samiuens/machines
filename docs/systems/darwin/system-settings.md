# 🚨 System

- The following system settings need to be set manually, as they don't exist in [nix-darwin](https://github.com/LnL7/nix-darwin):

### Network

- activate: firewall
  - enable: "stealth mode"
- create [nextdns profile](https://apple.nextdns.io/)

### Battery

- disable: optimized battery charging
- disable: dimming display on battery

### Display

- enable: "more space" on internal display
- enable: night shift between 19:00 – 6:15 (on highest color temperature)

### Notifications

- disable: unneccasary apps

### Lock Screen

- screen saver: never
- turn off display, on battery: 2 minutes
- turn off display, on power adapter: 3 minutes
- require password: immediately

### Privacy & Security

- enable: filevault
- enable: require admin password for systemwide settings

### Touch ID & Password

- add: touch id for finger twice

### Keyboard

- disable: all keyboard shortcuts (except: spotlight, finder search & mission control)

### Printers & Scanners

- add: both printers in house

### Finder

- delete: all tags
- sort sidebar:
  - Applications
  - Documents
  - "Nextcloud"
  - Desktop
  - Downloads
  - "Code"
  - Home
  ***
  - My mac
  - Hard & external disks
  - CDs, DVDs and iOS Devices
  - Cloud storage
  - Bonjour computers
  - Connected servers
