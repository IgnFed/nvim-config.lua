local lspconfig = require("lspconfig")
local util = require("lspconfig/util")
local utils = require("utils")
--local opts = { noremap=true, silent=true }

-- this part is telling Neovim to use the lsp server
local servers = { 'tsserver', "jsonls", "cssls", "html", "tailwindcss", "cssmodules_ls", "golangci_lint_ls", "yamlls" }

for _, lsp in pairs(servers) do
  lspconfig[lsp].setup {
    on_attach = utils.on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    detached = false,
  }
end


lspconfig.gopls.setup {
  on_attach = utils.on_attach,
  cmd = { "gopls", "serve" },
  filetypes = { "go", "gomod" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return servers
