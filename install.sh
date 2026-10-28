#!/usr/bin/env bash
# Install this wallpaper pack into ~/.Wallpapers for Omarchy / Hyprland rices.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${WALLPAPER_DIR:-$HOME/.Wallpapers}"
DRY_RUN=0

usage() {
  cat <<EOF
Usage: ./install.sh [--dry-run] [--dest DIR]

  Copies w/ and wall-archive/ into ~/.Wallpapers (or --dest).
  If the destination already exists, it is renamed to
  ~/.Wallpapers.bak-YYYYMMDD-HHMMSS first.

  Pair with: https://github.com/mysh264/omarchy-dotfiles
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --dry-run) DRY_RUN=1; shift ;;
    --dest) DEST="$2"; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage; exit 1 ;;
  esac
done

for need in w wall-archive; do
  if [[ ! -d "$ROOT/$need" ]]; then
    echo "Missing $ROOT/$need — clone the full repo first." >&2
    exit 1
  fi
done

stamp="$(date +%Y%m%d-%H%M%S)"
backup=""
if [[ -e "$DEST" ]]; then
  backup="${DEST}.bak-${stamp}"
fi

echo "Source:      $ROOT"
echo "Destination: $DEST"
[[ -n "$backup" ]] && echo "Backup:      $backup"
[[ "$DRY_RUN" -eq 1 ]] && echo "(dry run — no changes)"

if [[ "$DRY_RUN" -eq 1 ]]; then
  exit 0
fi

if [[ -n "$backup" ]]; then
  mv "$DEST" "$backup"
  echo "Moved existing wallpapers → $backup"
fi

mkdir -p "$DEST"
cp -a "$ROOT/w" "$DEST/w"
cp -a "$ROOT/wall-archive" "$DEST/wall-archive"

echo
echo "Installed."
echo "  $DEST/w"
echo "  $DEST/wall-archive"
echo
echo "Omarchy rice + slideshow:"
echo "  git clone https://github.com/mysh264/omarchy-dotfiles.git ~/Documents/GitHub/omarchy-dotfiles"
echo "  cd ~/Documents/GitHub/omarchy-dotfiles && ./install.sh"
