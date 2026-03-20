# How to make dotfiles working

## Install Home brew

_Better to follow the official site <https://brew.sh>_

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install Stow

```shell
brew install stow
```

## Install Zoxide

```shell
brew install zoxide
```

## Install Aerospace

```shell
brew install --cask nikitabobko/tap/aerospace
```

## dotfiles

Clone the repo to home (~).
Inside the dotfiles use the command

```shell
stow --adopt .
```

## Terminal

Ghostty

# Other configs

## Install Starship

_Requirement_ Nerd font "MesloLG Nerd Font" [here](https://www.nerdfonts.com/)

```shell
brew install starship
```

# Install NeoVim

```shell
brew install nvim
```

To make the nvim working we need more things

```shell
brew install ripgrep
brew install fzf
brew install lazygit
brew install fd
```

## Install nvm

```shell
brew install nvm
```

Install prettier global

```shell
brew install prettier
```

Install opencode agent

```shell
brew install anomalyco/tap/opencode
```

## Overwrite Apple git version

If using `git -v` show `git version x.x.x (Apple Git-xxx.x)`

```shell
brew install git
```

Overwrite git command

```shell
brew link --overwrite git
```
