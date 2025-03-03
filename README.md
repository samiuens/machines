# ❄️ samiarda's [nixos], [nix-darwin] and [home-manager] configuration

| hostname |         system          |         cpu         | ram  |         gpu         | role |      os      | status |
| :------: | :---------------------: | :-----------------: | :--: | :-----------------: | :--: | :----------: | :----: |
|  `kaya`  |  [Macbook Pro M1 13"]   | Apple M1 8-core CPU | 8GB  | Apple M1 8-core GPU | 💻️  | [🍏 (guide)] |   ✅   |
|  `dag`   | [Prime B550M-A (Wi-Fi)] |  AMD Ryzen 7 2700X  | 32GB | XFX Radeon RX 6600  |  🖥️  | [🪟 (guide)] |   ✅   |

[nixos]: https://nixos.org/
[nix-darwin]: https://github.com/LnL7/nix-darwin
[home-manager]: https://github.com/nix-community/home-manager
[Prime B550M-A (Wi-Fi)]: https://www.asus.com/us/motherboards-components/motherboards/prime/prime-b550m-a-wi-fi/
[AMD Ryzen 7 2700X]: https://www.amd.com/en/support/downloads/drivers.html/processors/ryzen/ryzen-2000-series/amd-ryzen-7-2700x.html
[XFX Radeon RX 6600]: https://www.xfxforce.com/shop/xfx-speedster-swft-210-amd-radeon-tm-rx-6600-core
[Macbook Pro M1 13"]: https://support.apple.com/en-us/111893
[🍏 (guide)]: https://github.com/samiuens/machines/blob/master/docs/systems/darwin.md
[🪟 (guide)]: https://github.com/samiuens/machines/blob/master/docs/systems/windows.md

## 🛬 Provision Process

- download [this repo](https://github.com/samiuens/machines)
- make `run.sh` executable
- run it with `provision`, followed with the wanted hostname _(darwin + linux only!)_
- look into the os specific guide for the following steps
