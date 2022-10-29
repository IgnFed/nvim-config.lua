local mason = require("mason")
local mason_lsp = require("mason-lspconfig")

mason.setup()
mason_lsp.setup({
  ensure_installed = {"sumneko_lua", "tsserver", "cssls", "cssmodules_ls", "jsonls", "tailwindcss", "gopls", "golangci_lint_ls", "yamlls"},
  automatic_installation = true
})
