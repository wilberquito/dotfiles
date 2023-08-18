# Set up working space

## ASCII Text

To generate ASCII text to make comments I use [ANSI Shadow](https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20)

## ZSH

The wikipedia of `zsh` can be found [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).

To install `zsh` with package manager

```sh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Make it your default shell: `chsh -s $(which zsh)`
or use `sudo lchsh $USER` if you are on Fedora.

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

# To install the packages
prefix + I
```

## Extensions

- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [fzf](https://github.com/junegunn/fzf)
- [starship](https://starship.rs/)
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [ohmyzsh](https://ohmyz.sh/#install)
- [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
