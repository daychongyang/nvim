# Vim IDE setup for Node.js Developers (macOS)

## Objectives

- Install iTerm2 (Terminal emulator as alternative to Apple's Terminal app).
- Install ZSH (Zsh is a shell designed for interactive use).
- Install Oh-My-Zsh (Unleash your terminal like never before).
- Install Neovim (hyperextensible Vim-based text editor).
- Install StyLua (An opinionated code formatter for Lua).
- Getting started using Lua in Neovim.
- Setup Neovim for Node.js Developers with Lua.

## Screenshots

![Screenshot](./screenshot.png)

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

## Install Zsh

Try `zsh --version` before installing it from Homebrew. Preferably newer than or equal to `5.0.8`.

```bash
$ brew install zsh
```

To set zsh as your default shell, execute the following assuming a default install of Homebrew

Recent macOS versions:

```bash
$ chsh -s /usr/local/bin/zsh
```

macOS High Sierra and older:

```bash
$ chsh -s /bin/zsh
```

## Install Oh-My-Zsh

### Install oh-my-zsh via curl

```bash
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install oh-my-zsh via wget

```bash
$ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### Install oh-my-zsh via fetch

```bash
$ sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
5.  To test the above settings, execute “zsh” on your terminal.

## Install StyLua

### Install from download

Downloads are available on the [Releases](https://github.com/JohnnyMorganz/StyLua/releases) page.

### Install from Crates.io

To install the stable version of StyLua using cargo, run the following:

```bash
$ cargo install stylua
```

## Getting started using Lua in Neovim

Neovim supports loading an `init.lua` file for configuration instead of the usual `init.vim`. For details, see [:help config](https://neovim.io/doc/user/starting.html#config)

Lua modules are found inside a `lua/` folder in `runtimepath` and can be imported using `require()`.

```bash
$ tree .
.
├── init.lua
└── lua
    ├── basic.lua
    └── plugins
        └── dashboard.lua
```

The following Lua code will load `basic.lua`:

```lua
require('basic')
```

⚠️ Notice the absence of a `.lua` extension.

Similarly, loading `plugins/dashboard.lua` is done like so:

```lua
require('plugins.dashboard')
-- or
require('plugins/dashboard')
```

Path separators are denoted by either a dot `.` or a slash `/`.

## Setup Neovim for Node.js Developers with Lua

### Prerequisites

1. [Node.js](https://nodejs.org/zh-cn/)
2. [Git](https://git-scm.com/book/zh/v2)

## Guides and resources

- [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
- [nvim-lua-guide-zh](https://github.com/glepnir/nvim-lua-guide-zh)

## Authors

- [@daychongyang](https://www.github.com/daychongyang)

## License

[MIT](https://choosealicense.com/licenses/mit/)
