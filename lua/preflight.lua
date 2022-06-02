-- https://neovim.io/doc/user/builtin.html
-- https://neovim.io/doc/user/lua.html

if vim.fn.has "nvim-0.7" ~= 1 then
  vim.notify("Oops! Something went wrong, please upgrade your Neovim to >= v0.7.0.", vim.log.levels.WARN)
  vim.wait(6000)
  vim.cmd "cquit"
end

local delimiter = vim.loop.os_uname().version:match "Windows" and "\\" or "/"
local nvim_packer = table.concat({ vim.fn.stdpath "data", "site", "pack", "packer", "start", "packer.nvim" }, delimiter)
if vim.fn.isdirectory(nvim_packer) == 0 then
  vim.notify("Installing Neovim dependencies...", vim.log.levels.INFO)
  PackerSync = vim.fn.system {
    "git",
    "clone",
    "--depth=1",
    "https://github.com/wbthomason/packer.nvim",
    nvim_packer,
  }

  vim.cmd [[packadd packer.nvim]]
end
