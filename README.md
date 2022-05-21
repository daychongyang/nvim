# Vim IDE setup for Node.js Developers (macOS)

## Objectives

- Install iTerm2 (Terminal emulator as alternative to Apple's Terminal app).
- Install Neovim (hyperextensible Vim-based text editor).

## Install iTerm2

### Install from download

Downloads are available on the [Releases](https://iterm2.com/downloads.html) page.

- Latest [stable release](https://iterm2.com/downloads/stable/iTerm2-3_4_15.zip)
- Latest [development prerelease](https://iterm2.com/nightly/latest)

### Install from package

#### Homebrew

To install the stable version of iTerm2, run the following:

```bash
$ brew install --cask iterm2
```

## Install Neovim

### Install from download

Downloads are available on the [Releases](https://github.com/neovim/neovim/releases) page.

- Latest [stable release](https://github.com/neovim/neovim/releases/tag/v0.7.0)
- Latest [development prerelease](https://github.com/neovim/neovim/releases/nightly)

### Install from package

#### Pre-built archives

```bash
$ curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
$ tar xzf nvim-macos.tar.gz
$ ./nvim-osx64/bin/nvim
```

#### Homebrew

To install the stable version of Nvim, run the following:

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

Optional: Alias `v`, `vi`, `vim` to `nvim` permanently:

1.  Go to home directory (`cd ~`).
2.  Edit `.bashrc` or `.zshrc` file.
3.  Copy the following codes to alias vi editor alias to vim.
    ```bash
    # alias <flag> <alias_name>='command'
    alias v='nvim'
    alias vi='nvim'
    alias vim='nvim'
    ```
4.  To load the changes, start a new terminal session or source the config file using the command.
    ```bash
      $ source ~/.zshrc
    ```
5.  To test the above settings, execute “bash” on your terminal.

## Authors

- [@daychongyang](https://www.github.com/daychongyang)
