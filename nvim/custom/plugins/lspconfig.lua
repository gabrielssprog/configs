local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require("lspconfig")

   for _, server in ipairs(require("nvim-lsp-installer").get_installed_servers()) do
      lspconfig[server.name].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
