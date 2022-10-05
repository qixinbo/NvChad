-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
M.plugins = {
   user = {
      ["goolord/alpha-nvim"] = {
         disable = false,
      },

      ["xiyaowong/nvim-transparent"] = {
          config = function()
            require("transparent").setup({
              enable = true, -- boolean: enable transparent
              extra_groups = { -- table/string: additional groups that should be cleared
              -- In particular, when you set it to 'all', that means all available groups

              -- example of akinsho/nvim-bufferline.lua
              "BufferLineTabClose",
              "BufferlineBufferSelected",
              "BufferLineFill",
              "BufferLineBackground",
              "BufferLineSeparator",
              "BufferLineIndicatorSelected",
            },
            exclude = {}, -- table: groups you don't want to clear
          })             
        end
      },

      ["nvim-treesitter/nvim-treesitter"] = {
          config = function()
            require "custom.plugins.treesitterconfig"
          end,
      },


      ["neovim/nvim-lspconfig"] = {
          config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
          end,
      },

      -- DAP config
      ["theHamsta/nvim-dap-virtual-text"] = {},
      ["rcarriga/nvim-dap-ui"] = {},
      ["mfussenegger/nvim-dap-python"] = {},
      ["mfussenegger/nvim-dap"] = {
          config = function()
            require("custom.plugins.dap").setup()
          end
      },
   },
}

-- now run :PackerSync

M.mappings = require "custom.mappings"

-- example of changing theme:
M.ui = {
  theme = "tokyonight",
}

return M
