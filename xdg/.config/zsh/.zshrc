bindkey -r '^J'

for zsh_file in "${ZDOTDIR:-$HOME/.config/zsh}"/rc.d/*.zsh(N); do
  source "$zsh_file"
done
