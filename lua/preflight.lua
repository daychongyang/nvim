-- https://neovim.io/doc/user/builtin.html
-- https://neovim.io/doc/user/lua.html

local function resolve(...)
  local result = table.concat({ ... }, vim.loop.os_uname().version:match "Windows" and "\\" or "/")
  return result
end

if vim.fn.has "nvim-0.7" ~= 1 then
  vim.notify("Oops! Something went wrong, please upgrade your Neovim to >= v0.7.0.", vim.log.levels.WARN)
  vim.wait(6000)
  vim.cmd "cquit"
end

local packer = resolve(vim.fn.stdpath "data", "site", "pack", "packer", "start", "packer.nvim")
if not vim.fn.isdirectory(packer) then
  vim.notify("Installing dependencies...", vim.log.levels.INFO)
  vim.fn.system {
    "git",
    "clone",
    "--depth=1",
    "https://github.com/wbthomason/packer.nvim",
    packer,
  }

  require("packer").sync()
end
