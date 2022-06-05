local nvim_lsp = require("lspconfig")

local lsp = vim.lsp
local handlers = lsp.handlers

vim.cmd("set completeopt=menu,menuone,noselect")

local pop_opts = {
  border = "rounded",
  max_width = 80,
}

handlers["textDocument/hover"] = lsp.with(handlers.hover, pop_opts)
handlers["textDocument/signatureHelp"] = lsp.with(handlers.signature_help, pop_opts)

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})

require("servers/tsserver")
