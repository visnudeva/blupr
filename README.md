**BETA**
<p align="center">
  <a href="https://github.com/visnudeva/blupr">
    <img src="https://github.com/visnudeva/blupr/blob/main/blupr00.png" width=200 />
  </a>
</p>

# blupr &nbsp; [![bluebuild build badge](https://github.com/visnudeva/blupr/actions/workflows/build.yml/badge.svg)](https://github.com/visnudeva/blupr/actions/workflows/build.yml)

A work in progress of a simple riced Atomic Linux distro with Hyprland as a window manager which can make older computers fast and snappy with its low CPU and RAM usage but also modern and beautiful.
Based on Ublue and focused on hyprland because this window manager really deserves its own functional and themed distro out of the box.

It is mainly for personal use, but anyone is also welcome to use it.

At the first login (gdm) choose hyprland as a the desktop environment otherwise it will boot on Gnome which is also functional.

## Main Keybindings (US Keyboard)

<div align="left">

| Keys | Action |
| :--- | :--- |
| <kbd>Super</kbd> + <kbd>T</kbd> | kitty (terminal) |
| <kbd>Super</kbd> + <kbd>I</kbd> | zed (IDE) |
| <kbd>Super</kbd> + <kbd>W</kbd> | firefox (web browser) |
| <kbd>Super</kbd> + <kbd>F</kbd> | thunar (file manager) |
| <kbd>Super</kbd> + <kbd>M</kbd> | wofi (menu) |
| <kbd>Super</kbd> + <kbd>Q</kbd> | quit a window |
| <kbd>Super</kbd> + <kbd>X</kbd> | fullscreen |
| <kbd>Super</kbd> + <kbd>L</kbd> | wlogout (power menu) |

</div>

## Preinstalled Flatpaks

<div>

Web
- Firefox
- Deluge
- Telegram

Media
- Mpv
- Gapless
- Shortwave
- Stremio
- Bottles
- Parabolic

Productivity
- Onlyoffice
- Notesnook
- Zed
- Gimp
- Kdenlive
  
Utilities
- Qview
- Localsend
- Eyedropper
- Warehouse
- Upscayl
  
(The preinstalled flatpaks will be installed automatically during the first minutes after the first boot)
</div>


## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/visnudeva/blupr:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/visnudeva/blupr:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/visnudeva/blupr
```
