unset NVM_DIR
unset NVM_BIN
unset NVM_INC
unset NVM_CD_FLAGS

path=("${(@)path:#$HOME/.nvm/versions/*/bin}")

if (( ${+manpath} )); then
  manpath=("${(@)manpath:#$HOME/.nvm/versions/*/share/man}")
fi

if command -v fnm >/dev/null 2>&1; then
  eval "$(fnm env --shell zsh --use-on-cd)"

  nvm() {
    if [[ "$1" == "alias" ]]; then
      if (( $# == 2 )) && [[ "$2" == "default" ]]; then
        fnm default
        return
      fi

      if (( $# >= 3 )); then
        if [[ "$2" == "default" ]]; then
          fnm default "$3"
        else
          fnm alias "$3" "$2"
        fi
        return
      fi
    fi

    fnm "$@"
  }
fi
