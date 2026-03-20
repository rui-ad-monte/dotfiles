brew_bin=""

if [[ -x "/opt/homebrew/bin/brew" ]]; then
  brew_bin="/opt/homebrew/bin/brew"
elif [[ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
  brew_bin="/home/linuxbrew/.linuxbrew/bin/brew"
elif command -v brew >/dev/null 2>&1; then
  brew_bin="$(command -v brew)"
fi

if [[ -n "$brew_bin" ]]; then
  eval "$($brew_bin shellenv)"
fi
