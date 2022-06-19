local M = {}

M.ui = {
  theme = "ayu-dark",
}

M.plugins = {
  user = require("custom.plugins"),
  options = {
    lspconfig = {
     setup_lspconf = "custom.plugins.lspconfig",
    },
  },
  override = {
    ["kyazdani42/nvim-tree.lua"] = {
      git = {
        enable = true
      },
      renderer = {
        icons = {
          show = {
            git = true
          }
        }
      }
    }
  }
}

M.options = {
  user = function()
    vim.cmd("set nowrap")
  end
}

return M
