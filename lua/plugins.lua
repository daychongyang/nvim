local packer = require "packer"

packer.startup(function(use)
  local plugins = {
    "wbthomason/packer.nvim",
    {
      "glepnir/dashboard-nvim",
    },
    {
      "olimorris/onedarkpro.nvim",
      config = function()
        require("onedarkpro").load()
      end,
    },
    {
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons",
      },
      tag = "nightly",
      config = function()
        require("nvim-tree").setup()
      end,
    },
    {
      "TimUntersberger/neogit",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("neogit").setup()
      end,
    },
    {
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
    },
    {
      "akinsho/toggleterm.nvim",
      config = function()
        require("toggleterm").setup()
      end,
    },
    {
      "romgrk/barbar.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
    },
    {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup()
      end,
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup()
      end,
    },
    {
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" } },
      config = function()
        require("telescope").setup()
      end,
    },
  }

  for _, plugin in ipairs(plugins) do
    use(plugin)
  end
end)
