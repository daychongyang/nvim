local packer = require "packer"

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "glepnir/dashboard-nvim"

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

  use {
    "romgrk/barbar.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
  }

  use {
    "olimorris/onedarkpro.nvim",
    config = function()
      require("onedarkpro").load()
    end,
  }
end)
