# Wallpapers — dark desktops, soft light, loud anime

> A personal wallpaper library for **[Omarchy](https://omarchy.org)** / Hyprland desktops — curated packs dropped into `~/.Wallpapers`, ready for the slideshow that ships with **[mysh264/omarchy-dotfiles](https://github.com/mysh264/omarchy-dotfiles)**.

[![Omarchy](https://img.shields.io/badge/Omarchy-ready-black.svg)](https://github.com/omacom/omarchy)
[![Hyprland](https://img.shields.io/badge/Hyprland-friendly-blue.svg)](https://hypr.land/)
[![Size](https://img.shields.io/badge/~1.2_GB-pack-orange.svg)](#what-you-get)
[![Credits](https://img.shields.io/badge/credits-upstream_repos-informational.svg)](#credits--original-sources)

Not a theme. Not a framework. Just the pictures that make a rice feel finished — anime frames, misty landscapes, Catppuccin keyboards, and a few that refuse to be categorised.

---

## Pair it with the Omarchy rice

This pack is meant to sit next to the Hyprland / hy3 desktop from **[mysh264/omarchy-dotfiles](https://github.com/mysh264/omarchy-dotfiles)**. That repo’s wallpaper slideshow walks every image under `~/.Wallpapers` (including `w/` and `wall-archive/`) and sets each one with `omarchy theme bg set`.

| Piece | Repo |
|-------|------|
| **Desktop configs** (hy3, bar, keys, Conky) | [mysh264/omarchy-dotfiles](https://github.com/mysh264/omarchy-dotfiles) |
| **This wallpaper library** | [mysh264/wallpapers](https://github.com/mysh264/wallpapers) |
| **Upstream Omarchy OS** | [omacom/omarchy](https://github.com/omacom/omarchy) · [omarchy.org](https://omarchy.org) |

### Clone both (recommended)

```bash
# 1) Desktop rice
git clone https://github.com/mysh264/omarchy-dotfiles.git ~/Documents/GitHub/omarchy-dotfiles
cd ~/Documents/GitHub/omarchy-dotfiles
chmod +x install.sh
./install.sh                 # Omarchy OS
# ./install.sh --target arch # baseline Arch / EndeavourOS / CachyOS (after setup-arch-omarchy-stack.sh)

# 2) Wallpapers → ~/.Wallpapers
git clone --depth 1 https://github.com/mysh264/wallpapers.git ~/.Wallpapers
# or: ./install.sh from this repo (same destination, backs up if needed)
```

Shallow clone (`--depth 1`) is enough — you want the files, not the history.

---

## What you get

| Folder | Count | ~Size | Role |
|--------|------:|------:|------|
| [`w/`](w/) | ~124 | ~286 MB | Daily drivers — numbered stills + a couple of named favourites |
| [`wall-archive/`](wall-archive/) | ~192 | ~936 MB | Deep archive — landscapes, anime, Catppuccin, Nix/Niri art, and more |
| **Total** | **~316** | **~1.2 GB** | Drop-in `~/.Wallpapers` tree |

Layout mirrors the live desktop:

```text
~/.Wallpapers/
├── w/                  # primary rotation
└── wall-archive/       # overflow / variety
```

The omarchy-dotfiles slideshow already recurses both folders. No extra config if you clone straight into `~/.Wallpapers`.

---

## Quick install — wallpapers only

```bash
# Fresh machine (empty or missing ~/.Wallpapers)
git clone --depth 1 https://github.com/mysh264/wallpapers.git ~/.Wallpapers

# Or use the helper (backs up an existing ~/.Wallpapers first)
git clone --depth 1 https://github.com/mysh264/wallpapers.git ~/Documents/GitHub/wallpapers
cd ~/Documents/GitHub/wallpapers
chmod +x install.sh
./install.sh
```

`install.sh` copies `w/` and `wall-archive/` into `~/.Wallpapers/`. If that directory already exists, it is renamed to `~/.Wallpapers.bak-YYYYMMDD-HHMMSS` first.

### Optional — wire the Omarchy slideshow

If you installed [omarchy-dotfiles](https://github.com/mysh264/omarchy-dotfiles), the slideshow user service is already there. Point it at this tree (default):

```bash
# ~/.config/wallpaper-slideshow.conf
WALLPAPER_DIR="$HOME/.Wallpapers"
INTERVAL=300   # seconds
```

```bash
systemctl --user enable --now wallpaper-slideshow.timer
# or run once:
~/.local/bin/wallpaper-slideshow
```

Without that rice, any wallpaper setter that walks a directory works — `swww`, `hyprpaper`, `omarchy theme bg set /path/to/file.jpg`, etc.

---

## Preview a few

Open any file under `w/` or `wall-archive/` in your image viewer. Favourites from this machine’s rotation include soft city nights, samurai silhouettes, Catppuccin BSOD humour, and high-res anime stills — but the fun is letting the slideshow surprise you.

> **Heads-up on size.** Full clone is ~1.2 GB. Use `--depth 1`. GitHub soft-limits repos around 1 GB; this sits a little over — fine for personal use, but prefer shallow clones and don’t treat it as a CDN.

---

## Credits — original sources

These images are **not** my art. This repo is a **personal subset** pulled from excellent public GitHub wallpaper collections. All credit belongs to the upstream maintainers and the original artists.

| Local folder | Upstream repository | Notes |
|--------------|---------------------|-------|
| `w/` | **[thor-op/w](https://github.com/thor-op/w)** | Curated pack for [Wavo Walls](https://github.com/thor-op/w). Local tree is a **subset** (~124 of ~202). Upstream license: **MIT**. |
| `wall-archive/` | **[vimlinuz/wall-archive](https://github.com/vimlinuz/wall-archive)** | Broad curated archive across styles & resolutions. Local tree is a **subset** (~192 of ~355). |

Also related / worth starring if you want the full upstream libraries:

- [dharmx/walls](https://github.com/dharmx/walls) — huge categorized wallpaper dump often referenced in Arch rices  
- [omacom/omarchy](https://github.com/omacom/omarchy) — ships theme backgrounds used by Omarchy itself (separate from this pack)

If you are an artist and want something removed or re-attributed, open an issue — happy to fix credits or take files down.

See **[CREDITS.md](CREDITS.md)** for the short attribution file you can keep next to forks.

---

## License

- **Repo scaffolding** (`README.md`, `install.sh`, curation layout): MIT — see [LICENSE](LICENSE).
- **Individual wallpapers**: rights remain with the original artists / upstream packs. Redistribution here is for personal desktop use under the same spirit as the source repos. When in doubt, prefer cloning **[thor-op/w](https://github.com/thor-op/w)** or **[vimlinuz/wall-archive](https://github.com/vimlinuz/wall-archive)** directly.

---

## Companion links

```bash
# Omarchy configs (hy3, bar, slideshow, Conky)
git clone https://github.com/mysh264/omarchy-dotfiles.git ~/Documents/GitHub/omarchy-dotfiles

# This wallpaper pack
git clone --depth 1 https://github.com/mysh264/wallpapers.git ~/.Wallpapers

# Optional Conky panel used by the rice
git clone https://github.com/mysh264/lean-conky-config.git ~/Documents/GitHub/lean-conky-config
```

Built for late-night coding sessions on Omarchy. Enjoy the walls.
