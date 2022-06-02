local packer = require "packer"

packer.startup(function(use)
  -- https://github.com/wbthomason/packer.nvim
  use "wbthomason/packer.nvim"

  -- https://github.com/olimorris/onedarkpro.nvim
  use {
    "olimorris/onedarkpro.nvim",
    config = function()
      require("onedarkpro").load()
    end,
  }

  -- https://github.com/glepnir/dashboard-nvim
  use "glepnir/dashboard-nvim"

  -- https://github.com/itchyny/lightline.vim
  use "itchyny/lightline.vim"

  -- https://github.com/romgrk/barbar.nvim
  use {
    "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  }

  -- https://github.com/kyazdani42/nvim-tree.lua
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
    tag = "nightly",
    config = function()
      require("nvim-tree").setup()
    end,
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup()
    end,
  }

  -- https://github.com/akinsho/toggleterm.nvim
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end,
  }

  -- https://github.com/nvim-telescope/telescope.nvim
  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("telescope").setup()
    end,
  }

  -- https://github.com/TimUntersberger/neogit
  use {
    "TimUntersberger/neogit",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("neogit").setup()
    end,
  }

  -- https://github.com/lewis6991/gitsigns.nvim
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {
        current_line_blame = true,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol",
          delay = 500,
          ignore_whitespace = false,
        },
      }
    end,
  }

  if PackerSync then
    packer.sync()
  end
end)
