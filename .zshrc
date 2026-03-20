# unbind new line shortcut
bindkey -r '^J'

# Homebrew
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -e "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
  # Linux with Homebrew installed
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Zoxide
eval "$(zoxide init --cmd cd zsh)"

# Starship
eval "$(starship init zsh)"

# Nvim
alias vim="nvim"
alias vi="nvim"

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

