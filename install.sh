#!/usr/bin/env bash
# Symlink these dotfiles into place. Existing non-link targets are moved to *.bak.
set -euo pipefail
here=$(cd "$(dirname "$0")" && pwd)
link() {
    local src=$here/$1 dst=$2
    mkdir -p "$(dirname "$dst")"
    if [[ -e $dst && ! -L $dst ]]; then mv "$dst" "$dst.bak.$(date +%s)"; fi
    ln -sfn "$src" "$dst"
    echo "$dst -> $src"
}
link nvim              "$HOME/.config/nvim"
link herdr/config.toml "$HOME/.config/herdr/config.toml"
link bin/herdr-sessionizer "$HOME/.local/bin/herdr-sessionizer"
