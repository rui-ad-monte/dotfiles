local_zsh_file="${ZDOTDIR:-$HOME/.config/zsh}/local.zsh"

if [[ -r "$local_zsh_file" ]]; then
  source "$local_zsh_file"
fi
