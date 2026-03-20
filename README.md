# Dotfiles

This repo is organized as GNU Stow packages so a fresh clone can bootstrap itself.

## Quick start

```sh
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
./scripts/bootstrap.sh
```

The bootstrap script will:

- install Homebrew if it is missing
- install shared packages from `Brewfile.common`
- install platform packages from `Brewfile.darwin` or `Brewfile.linux`
- stow the dotfiles into `$HOME`
- install TPM for tmux plugins
- create `~/.config/zsh/local.zsh` from the example file if it does not exist yet

## Layout

- `shell/` manages `~/.zshenv`
- `tmux/` manages `~/.tmux.conf`
- `xdg/` manages shared `~/.config/*` files like zsh, nvim, ghostty, starship, and opencode
- `macos/` manages macOS-only config like Karabiner

## Shell config and secrets

Tracked zsh config lives in `xdg/.config/zsh/`.

- `shell/.zshenv` points zsh to `~/.config/zsh`
- `xdg/.config/zsh/.zshrc` loads modular files from `xdg/.config/zsh/rc.d/`
- `~/.config/zsh/local.zsh` is for machine-local env vars, secrets, and overrides

Keep secrets out of git by editing `~/.config/zsh/local.zsh`, not the tracked files.

## Manual restow

If you change the repo layout later, run:

```sh
./scripts/stow.sh
```

## Notes

- `opencode.json` stays tracked in git; only local runtime files under `xdg/.config/opencode/` are ignored
- `Brewfile.darwin` installs GUI apps like Ghostty, Karabiner-Elements, and Rectangle
- Ghostty uses `MesloLGS Nerd Font Mono`; install it manually if you want the exact same font locally
- Neovim plugins bootstrap themselves on first launch through LazyVim
