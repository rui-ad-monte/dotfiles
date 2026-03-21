export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"

unset NVM_BIN
unset NVM_INC
unset NVM_CD_FLAGS

path=("${(@)path:#$NVM_DIR/versions/*/bin}")

if (( ${+manpath} )); then
  manpath=("${(@)manpath:#$NVM_DIR/versions/*/share/man}")
fi

for nvm_sh in \
  "$NVM_DIR/nvm.sh" \
  "/opt/homebrew/opt/nvm/nvm.sh" \
  "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"
do
  if [[ -s "$nvm_sh" ]]; then
    . "$nvm_sh" --no-use
    break
  fi
done

for nvm_completion in \
  "$NVM_DIR/bash_completion" \
  "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" \
  "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"
do
  if [[ -s "$nvm_completion" ]]; then
    . "$nvm_completion"
    break
  fi
done
