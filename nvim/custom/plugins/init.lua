return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["akinsho/bufferline.nvim"] = {
    disable = false,
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          indicator_icon = '▎',
          offsets = {{filetype = "NvimTree", text = "", text_align = "center"}}
        }
      })
    end
  }
}
