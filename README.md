# ❄️ samiarda's [nixos], [nix-darwin] and [home-manager] configuration

|  hostname   |          board          |         cpu         | ram  |         gpu          |   role   | os  | status |
| :---------: | :---------------------: | :-----------------: | :--: | :------------------: | :------: | :-: | :----: |
| `tsukuyomi` | [Prime B550M-A (Wi-Fi)] | [AMD Ryzen 7 2700X] | 32GB | [XFX Radeon RX 6600] | 🖥️ + 🎭️ | ❄️  |   ✅   |
|  `chidori`  |           ⤴️            |         ⤴️          |  ⤴️  |          ⤴️          | 🖥️ + 🎭️ | 🪟  |   ✅   |
| `amaterasu` |  [Macbook Pro M1 13"]   | Apple M1 8-core CPU | 8GB  | Apple M1 8-core GPU  |   💻️    | 🍏  |   ✅   |

## ⚙️ provision process

- download the [this repo](https://github.com/samiuens/machines/archive/refs/heads/main.zip)
- make `machines.sh` executable and run `./machines.sh provision`
- follow the process and steps as described

## 🛫 post install

- Manual steps that must be initiated after installing the machine.

### 🍏 applications

- [ ] onepassword - authenticate
- [ ] firefox - enroll sync & import [ublock config](https://github.com/samiuens/machines/blob/main/data/firefox/ublock.txt)
- [ ] obsidian - sync vault
- [ ] nextcloud - login and sync folder
- [ ] todoist - login
- [ ] gitkraken - authenticate with github

### 🖥️ systems

- **nixOS:**

  - secure boot:
    - […]

- **macOS:**

  - [manual adjustments](https://github.com/samiuens/machines/blob/main/docs/mac-manual.md) of settings and finder
  - firefox:
    - create new profile
    - import [user.js](https://github.com/samiuens/machines/blob/main/data/firefox/user.js) → add hostname to nextdns
    - login into firefox sync
    - install [firefox extensions](https://github.com/samiuens/machines/blob/main/docs/firefox-extensions.md) and import [ublock config](https://github.com/samiuens/machines/blob/main/data/firefox/ublock.txt)
    - setup [brave search](https://search.brave.com/) as default search engine
  - launch the following apps, give permissions and insert license key:
    - aerospace
    - aldente
    - cleanshotx
  - raycast
    - import [raycast config](https://github.com/samiuens/machines/blob/main/data/raycast/raycast.rayconfig)

[nixos]: https://nixos.org/
[nix-darwin]: https://github.com/LnL7/nix-darwin
[home-manager]: https://github.com/nix-community/home-manager
[Prime B550M-A (Wi-Fi)]: https://www.asus.com/us/motherboards-components/motherboards/prime/prime-b550m-a-wi-fi/
[AMD Ryzen 7 2700X]: https://www.amd.com/en/support/downloads/drivers.html/processors/ryzen/ryzen-2000-series/amd-ryzen-7-2700x.html
[XFX Radeon RX 6600]: https://www.xfxforce.com/shop/xfx-speedster-swft-210-amd-radeon-tm-rx-6600-core
[Macbook Pro M1 13"]: https://support.apple.com/en-us/111893
