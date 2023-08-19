# A glorified personal dotfiles

This repository tends to be a solution to automate the installation
of main programs, set their configurations via soft links and finally
bootstrap the system.

Dev steps:

1. Clone the glorified dotfiles repository.

    ```sh
    $ git clone https://github.com/wilberquito/dotfiles
    ```

Use steps:

1. Clone the glorified dotfiles repository.

    ```sh
    $ git clone --depth 1 --recurse-submodules https://github.com/wilberquito/dotfiles
    ```

2. Change directory to script section.

    ```sh
    $ cd dotfiles/script
    ```

3. Install the main programs (you need to be a superuser).

    ```sh
    $ sudo ./install
    ```

4. Link config program files to your system.

    ```sh
    $ ./symlink
    ```

5. Bootstrap the system

    ```sh
    $ ./bootstrap
    ```
