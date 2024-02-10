<div align="center">
  <img src=assets/shebang.png height=200>
  <h1> Hyprland Scripts </h1>
</div>

This repository contains various small utilities for [Hyprland compositor](https://github.com/hyprwm/Hyprland):
  - [Hyprscreen](#hyprscreen): screenshot tool with fancy post-processing.
  - [Hyprzen](#hyprzen): switch between two wallpapers, one for empty desktop or floating windows only, another for tiling mode.
  - [Hyprexclusive](#hyprexclusive): open application only if no similar application already opened. If similar app already exist - focus to it.

<div align="center">
    <div id='hyprscreen'></div>
    <h2> Hyprscreen </h2> 
</div>

**hyprscreen** - is a bash script for the Hyprland compositor that allows you to easily take screenshots in various modes and formats. It is also able to apply fancy post-processing such as padding, rounding and shadows.

![](./assets/fancy.png)

### Features

#### Modes:

  - **Active**: take a quick screenshot of an active window.
  - **Screen**: select the monitor and take a screenshot of the entire screen.
  - **Interactive**: interactively select the entire screen, window or custom area.
  - **Panorama**: loop through workspaces and create a single image of them.
  - **All**: take screenshot of all outputs.

#### Formats:
  - **Simple**: simple screenshot with no effects.
  - **Fancy**: image with post-processing - shadows, padding and rounding.

#### Actions:
  - **Save**: save screenshot to custom or default path.
  - **Copy**: copy screenshot to clipboard using wl-copy.
  - **Copysave**: save screenshot and copy it to clipboard.

#### Colors

Background color for image can also be set with `-b` option

### Install

```sh
git clone https://github.com/Ligthiago/hyprlandScripts
cd hyprlandScripts
make install-hyprscreen
```
or just copy the `hyprscreen/hyprscreen` file to `~/.bin`.

For NixOS [this package](https://github.com/Ligthiago/novaFlake/blob/main/packages/hyprscreen/default.nix) can be used.

### Usage

```
Screenshot tool for Hyprland

Usage:
  > hyprscreen {flags} (path)

Flags:
  -m, --mode - Screenshot mode. Possible values: interactive, active, screen, panorama, all. Default: interactive.
  -a, --action - Action after taking screenshot. Possible values: save, copy, copysave. Default: save.
  -f, --fancy - Fancy mode, screenshot with additional effects.
  -b, --background - Background color for fancy mode.
  -e, --exclude - Exclude workspaces in panorama mode.
  -s, --stack - Direction of panorama mode. Possible values: horizontal, vertical. Default: vertical.
  -v, --verbose - Print additional info.
  -n, --notify - Send notification.
  -d, --deps - Check dependencies.
  -h, --help - Show this message.

Parameters:
  path <path>: Where to save screenshot. Default: XDG_SCREENSHOTS_DIR if exist, either XDG_PICTURES_DIR if exist, else HOME
```

<div align="center">
    <div id='hyprzen'></div>
    <h2> Hyprzen </h2> 
</div>

**hyprzen** - is a bash script that allows to switch between two wallpapers. Normal wallpaper appears when the workspace has no windows or only floating windows. Zen wallpaper, probably less distracting, appears when at least one window on the workspace is in tiling mode.

https://github.com/Ligthiago/hyprscreen/assets/142721811/7bd430df-1c9a-4592-af44-2a531119d3a2

### Install

```sh
git clone https://github.com/Ligthiago/hyprlandScripts
cd hyprlandScripts
make install-hyprzen
```
or just copy the `hyprzen/hyprzen` file to `~/.bin`.

For NixOS [this package](https://github.com/Ligthiago/novaFlake/blob/main/packages/hyprzen/default.nix) can be used.

### Usage 

```
Usage:
  > hyprzen {flags} (normal wallpaper) (zen wallpaper)

Flags:
  -s, --step - Transition speed. Default: 10
  -f, --fps - Transition fps. Default: 60
  -h, --help - Show this message

Parameters:
  normal wallpaper <path>: Path to normal wallpaper
  zen wallpaper <path>: Path to zen wallpaper
```

<div align="center">
    <div id='hyprexclusive'></div>
    <h2> Hyprexclusive </h2> 
</div>

**hyprexclusive** - is a bash script that allows you to open an application only if there are no other windows of the same class, in which case just move the focus to it.

### Install

```sh
git clone https://github.com/Ligthiago/hyprlandScripts
cd hyprlandScripts
make install-hyprexclusive
```
or just copy the `hyprexclusive/hyprexclusive` file to `~/.bin`.

<!-- For NixOS [this package](https://github.com/Ligthiago/novaFlake/blob/main/packages/hyprzen/default.nix) can be used. -->

### Usage

```
Usage:
  > hyprexclusive {flags} (class) (executable)

Flags:
  -h, --help - Show this message.

Parameters:
  class <string>: Application class to check
  executable <string>: Application to launch
```
