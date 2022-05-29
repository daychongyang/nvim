-- https://neovim.io/doc/user/builtin.html
-- https://neovim.io/doc/user/lua.html

local path = require "path"

if vim.fn.has "nvim-0.7" ~= 1 then
  vim.notify("Oops! Something went wrong, please upgrade your Neovim to >= v0.7.0.", vim.log.levels.WARN)
  vim.wait(6000)
  vim.cmd "cquit"
end

local packer = path.resolve(vim.fn.stdpath "data", "site", "pack", "packer", "start", "packer.nvim")
if vim.fn.empty(vim.fn.glob(packer)) == 1 then
  vim.notify("Oops! Something went wrong, please upgrade your Neovim to >= v0.7.0.", vim.log.levels.INFO)
  vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    packer,
  }

  require("packer").sync()
end
