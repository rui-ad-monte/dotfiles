#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HOMEBREW_INSTALL_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"

log() {
  printf '==> %s\n' "$*"
}

detect_platform() {
  case "$(uname -s)" in
    Darwin)
      printf 'darwin\n'
      ;;
    Linux)
      printf 'linux\n'
      ;;
    *)
      printf 'Unsupported platform: %s\n' "$(uname -s)" >&2
      exit 1
      ;;
  esac
}

detect_brew_bin() {
  if [[ -x "/opt/homebrew/bin/brew" ]]; then
    printf '/opt/homebrew/bin/brew\n'
    return
  fi

  if [[ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
    printf '/home/linuxbrew/.linuxbrew/bin/brew\n'
    return
  fi

  if command -v brew >/dev/null 2>&1; then
    command -v brew
    return
  fi

  return 1
}

install_homebrew() {
  if detect_brew_bin >/dev/null 2>&1; then
    return
  fi

  log "Installing Homebrew"
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL "$HOMEBREW_INSTALL_URL")"
}

activate_homebrew() {
  local brew_bin

  brew_bin="$(detect_brew_bin)"
  eval "$("$brew_bin" shellenv)"
}

install_brew_bundles() {
  local platform

  platform="$(detect_platform)"

  log "Installing shared Homebrew packages"
  brew bundle --file="$REPO_ROOT/Brewfile.common"

  log "Installing ${platform} Homebrew packages"
  if ! brew bundle --file="$REPO_ROOT/Brewfile.${platform}"; then
    log "Continuing after ${platform} Homebrew package errors"
  fi
}

install_tmux_plugin_manager() {
  local tpm_dir

  tpm_dir="$HOME/.tmux/plugins/tpm"

  if [[ -d "$tpm_dir/.git" ]]; then
    return
  fi

  log "Installing tmux plugin manager"
  mkdir -p "$HOME/.tmux/plugins"
  git clone https://github.com/tmux-plugins/tpm "$tpm_dir"
}

prepare_local_shell_config() {
  local local_shell_file

  local_shell_file="$HOME/.config/zsh/local.zsh"
  mkdir -p "$(dirname "$local_shell_file")"

  if [[ -e "$local_shell_file" ]]; then
    return
  fi

  log "Creating local shell override file"
  cp "$REPO_ROOT/xdg/.config/zsh/local.zsh.example" "$local_shell_file"
}

main() {
  install_homebrew
  activate_homebrew
  install_brew_bundles
  "$REPO_ROOT/scripts/stow.sh"
  install_tmux_plugin_manager
  prepare_local_shell_config
  log "Bootstrap complete"
}

main "$@"
