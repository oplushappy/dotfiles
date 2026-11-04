# dotfiles

- `nvim/` — LazyVim config (`~/.config/nvim`)
- `herdr/config.toml` — herdr config (`~/.config/herdr/config.toml`)
- `bin/herdr-sessionizer` — fzf workspace/project picker bound to `prefix+f` in herdr (needs `herdr`, `jq`, `fzf`)
- `fish/config.fish`, `fish/fish_plugins` — fish config and [fisher](https://github.com/jorgebucaran/fisher) plugin list (tide, sponge, fzf.fish); uses `zoxide`, `eza`, `fzf`, `fd` when present. Machine-specific bits go in untracked `~/.config/fish/local.fish`.
- `fish/tide.fish` — tide prompt settings (universal vars), applied by `install.sh`
- `lazygit/config.yml` — lazygit theme (Catppuccin Mocha)

```sh
sudo pacman -S --needed fish fzf fd eza zoxide neovim ripgrep jq lazygit gcc make unzip
git clone <repo> ~/dotfiles && ~/dotfiles/install.sh
```
