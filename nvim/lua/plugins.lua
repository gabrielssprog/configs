vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
  use "wbthomason/packer.nvim"

  use {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim_web_devicons_configs")
    end
  }

  use {
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup({
        theme_style = "dark_default"
      })
    end
  }

  use {
    "kyazdani42/nvim-tree.lua",
    tag = "nightly",
    config = function()
      require("nvim_tree_configs")
    end
  }

  use {
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    config = function()
      require("bufferline_config")
    end
  }

  use {
    "williamboman/nvim-lsp-installer",
  }

  use {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvim_lsp_config_configs")
    end
  }

  use "hrsh7th/cmp-nvim-lsp"

  use "hrsh7th/cmp-vsnip"

  use "hrsh7th/vim-vsnip"

  use "onsails/lspkind-nvim"

  use {
    "hrsh7th/nvim-cmp",
    config = function()
      require("nvim_cmp_configs")
    end
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim_treesitter")
    end
  }

  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine_configs")
    end,
  }

  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  }

  use {
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    },
    config = function() 
      require("gitsigns").setup()
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }
end)
