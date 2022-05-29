local M = {}

function M.resolve(...)
  local result = table.concat({ ... }, vim.loop.os_uname().version:match "Windows" and "\\" or "/")
  return result
end

return M
