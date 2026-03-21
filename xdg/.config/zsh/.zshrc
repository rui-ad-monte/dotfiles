if [[ -n "${DOTFILES_ZSH_MAIN_GUARD:-}" ]]; then
  return
fi

typeset -g DOTFILES_ZSH_MAIN_GUARD=1

bindkey -r '^J'

for zsh_file in "${ZDOTDIR:-$HOME/.config/zsh}"/rc.d/*.zsh(N); do
  source "$zsh_file"
done

if [[ -r "$HOME/.zshrc" ]]; then
  source "$HOME/.zshrc"
fi

unset DOTFILES_ZSH_MAIN_GUARD
