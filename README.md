# dotfiles

> Get your Mac ready.

## Getting Started

Run the `bootstrap.sh` script to setup `brew` and `nvm`.

The script will automatically run `brew bundle` to install all applications.

When using `oh-my-zsh` setup the autocompletions with:

```commandline
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## ZSH Profile

The order of files being loaded by ZSH:

| Order | File    | Condition |
|-------|---------|-----------|
| 1 | `.zshenv`   | always |
| 2 | `.zprofile` | login |
| 3 | `.zshrc`    | interactive |
| 4 | `.zlogin`   | login |
| 5 | `.zlogout`  | exiting login shell |
