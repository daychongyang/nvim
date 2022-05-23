-- https://neovim.io/doc/user/builtin.html#has()
-- https://neovim.io/doc/user/lua.html#vim.notify()
-- https://neovim.io/doc/user/lua.html#vim.wait()
-- https://neovim.io/doc/user/lua.html#vim.cmd()

if vim.fn.has "nvim-0.7" ~= 1 then
  vim.notify("Oops! Something went wrong! Please upgrade your Neovim to >= v0.7.0.", vim.log.levels.WARN)
  vim.wait(6000)
  vim.cmd "cquit"
end
