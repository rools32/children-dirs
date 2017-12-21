# children-dirs

_cd for sub directories_

It defines a new command, called _ccd_ that acts like cd but its argument is a
pattern that can be expanded only by directories from the current directory.

## Installation

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/children-dirs`.

    ```sh
    git clone git://github.com/rools32/children-dirs ~/.zsh/children-dirs
    ```

2. Add the following to your `.zshrc`:

    autoload -Uz compinit && compinit
    source ~/.zsh/children-dirs/children-dirs.zsh

3. Start a new terminal session.


## Usage

Let's take the following directory tree

    .
    ├── bar1
    ├── bar2
    └── foo
        ├── bar
        └── foobar

Type `ccd bar<TAB>` and get

    Subdirectories: 
    bar1        bar2        foo/bar     foo/foobar


## Uninstallation

1. Remove the code referencing this plugin from `~/.zshrc`.

2. Remove the git repository from your hard drive

    ```sh
    rm -rf ~/.zsh/children-dirs.zsh # Or wherever you installed
    ```
