local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap=true, silent=true }

  vim.cmd("nnoremap gd :lua vim.lsp.buf.definition()<CR>");
  vim.cmd("nnoremap gh :lua vim.lsp.buf.hover()<CR>");
  vim.cmd("nnoremap ge :lua vim.diagnostic.open_float()<CR>");
end

lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html' },
})