-- https://neovim.io/doc/user/api.html#nvim_set_keymap()
-- https://neovim.io/doc/user/lua.html#vim.tbl_extend()

local function keymap(mode, lhs, rhs, opts)
  local options = { noremap = true }

  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keymap('n', "","")
