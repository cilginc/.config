# 🛠️ Dotfiles

This repository contains my personal configuration files for my Linux setup.

> ⚠️ **Note**: This repository is a work in progress. Currently, it only includes my `.zshrc` configuration, but more configs (e.g. for window managers, terminal, Neovim, and more) will be added over time.

## 📁 Current Configurations

- [`~/.zshrc`](./zsh/zshrc): My Zsh shell configuration.

## 🧩 Planned Additions

- `Neovim`
- `Hyprland`
- `Waybar`
- `Swaync`
- `Wofi`
- `Wlogout`
- `Btop`
- And more configuration

## 🚀 Zsh Setup

Clone the repo and copy the file manually:

```bash
cp .config/zsh/zshrc ~/.zshrc
```

You also need to install `fzf`, `eza`, `starship` and `zoxide` for better experience.

## Tauon Setup

> [!WARNING] This installation only for `AUR` repo.

```bash
mv ~/.local/share/TauonMusicBox/tauon.conf ~/.local/share/TauonMusicBox/tauon.conf.bak
cp .config/TauonMusicBox/tauon.conf ~/.local/share/TauonMusicBox/tauon.conf
cp -r .config/TauonMusicBox/theme ~/.local/share/TauonMusicBox/theme/
```
