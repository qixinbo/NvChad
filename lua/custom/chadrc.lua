-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
M.plugins = {
   user = {
      ["goolord/alpha-nvim"] = {
         disable = false,
      },
      ["neovim/nvim-lspconfig"] = {
          config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
          end,
      },
   },
}

-- now run :PackerSync

-- example of changing theme:
M.ui = {
  theme = "tokyonight",
}

return M
