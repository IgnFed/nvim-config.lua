local lspconfig = require("lspconfig")
local neodev = require("neodev")
local utils = require("utils")


neodev.setup()
lspconfig.sumneko_lua.setup {
  on_attach = utils.on_attach,
  flags = {
    debounce_text_changes = 800,
  },
  detached = false,
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
}

