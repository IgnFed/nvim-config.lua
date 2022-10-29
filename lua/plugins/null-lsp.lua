local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup{
  debug = false,
   sources = {
     formatting.prettier,
     formatting.eslint,
     formatting.stylua.with({extra_args = {"--fast"}}),
     formatting.goimports,
     formatting.gofmt,
     diagnostics.golangci_lint
    },
}


