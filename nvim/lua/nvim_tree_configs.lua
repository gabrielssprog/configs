vim.cmd("nnoremap <C-b> :NvimTreeToggle<CR>")

require("nvim-tree").setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					default = "",
					open = "",
				}
			}
		}
	}
})

