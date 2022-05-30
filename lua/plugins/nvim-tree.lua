local M = {
  "kyazdani42/nvim-tree.lua",
  requires = {
    "kyazdani42/nvim-web-devicons",
  },
  tag = "nightly",
  config = function()
    require("nvim-tree").setup()
  end,
}

return M
