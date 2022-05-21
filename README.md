# Vim IDE setup for Node.js Developers

## Objectives

- Install Neovim (hyperextensible Vim-based text editor).

## Install Neovim

### Install from package

#### macOS/OS X

##### Pre-built archives

```bash
$ curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
$ tar xzf nvim-macos.tar.gz
$ ./nvim-osx64/bin/nvim
```

##### Homebrew on macOS or Linux

```bash
$ brew install neovim
```

Or install the development version of Nvim:

```bash
$ brew install --HEAD neovim
```

To update the development version of Nvim:

```bash
$ brew reinstall neovim
```

Optional: To check what version of Nvim that you're running, run the following:

```bash
$ nvim -v
NVIM v0.7.0
Build type: Release
LuaJIT 2.1.0-beta3
编译者 brew@Monterey

Features: +acl +iconv +tui
See ":help feature-compile"

     系统 vimrc 文件: "$VIM/sysinit.vim"
         $VIM 预设值: "/usr/local/Cellar/neovim/0.7.0/share/nvim"

Run :checkhealth for more info
```

For details on installing Nvim, see the [official wiki](https://github.com/neovim/neovim/wiki/Installing-Neovim).

## Authors

- [@daychongyang](https://www.github.com/daychongyang)



