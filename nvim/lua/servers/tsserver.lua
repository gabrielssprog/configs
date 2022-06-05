local nvim_lsp = require("lspconfig")

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap=true, silent=true }

  vim.cmd("nnoremap gd :lua vim.lsp.buf.definition()<CR>");
  vim.cmd("nnoremap gh :lua vim.lsp.buf.hover()<CR>");
  vim.cmd("nnoremap ge :lua vim.diagnostic.open_float()<CR>");

end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  handlers = handlers,
}
