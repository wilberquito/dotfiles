# A glorified personal dotfiles

This repository tends to be a solution to automate the installation
of main programs, set their configurations via soft links and finally
bootstrap the system.

### Installation steps

- Clone the glorified dotfiles repository.

```sh
$ git clone --depth 1 https://github.com/wilberquito/dotfiles
```

- Change directory to script section.

```sh
$ cd dotfiles/script
```

- Install the main programs (you need to be a superuser).

```sh
$ sudo ./install
```

- Link config program files to your system.

```sh
$ ./symlink
```

- Bootstrap the system

```sh
$ ./bootstrap
```
