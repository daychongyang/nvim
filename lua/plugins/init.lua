local packer = require "packer"

packer.startup(function(use)
  local plugins = {
    "wbthomason/packer.nvim",
    require "plugins/dashboard-nvim",
    require "plugins/onedarkpro",
    require "plugins/nvim-tree",
    require "plugins/neogit",
    require "plugins/gitsigns",
    require "plugins/toggleterm",
    require "plugins/barbar",
    require "plugins/trouble",
    require "plugins/indent-blankline",
    require "plugins/telescope",
  }

  for _, plugin in ipairs(plugins) do
    use(plugin)
  end
end)
