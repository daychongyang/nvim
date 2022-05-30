local M = {
  "nvim-telescope/telescope.nvim",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("telescope").setup()
  end,
}

return M
