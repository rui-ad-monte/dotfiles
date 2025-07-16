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

Better to follow the official GitHub [here](https://github.com/nvm-sh/nvm#installing-and-updating)

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
```

If want to use prettier in nvim install prettier global in the system

```shell
npm install -g prettier

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
