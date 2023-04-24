# Set up working space

## ZSH

The wikipedia of `zsh` can be found [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).

To install `zsh` with package manager

```sh
sudo apt install zsh
```

Make it your default shell: chsh -s $(which zsh) or use sudo lchsh $USER if you are on Fedora.

## Neovim configuration

I use to work with `NvimChad` [fork](https://github.com/wilberquito/nvchad.lua/).

```sh
git clone git@github.com:wilberquito/nvchad.lua.git
git switch <custom-branch>
ln -s <clone-dir> ~/.config/nvim
```

## Tmux configuration

```sh
ln -s <clone-dir>/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
```

## Extensions

- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [fzf](https://github.com/junegunn/fzf)
- [starship](https://starship.rs/)
- [ohmyzsh](https://ohmyz.sh/#install)
- [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
