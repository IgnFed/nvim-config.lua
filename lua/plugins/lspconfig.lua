local lspconfig = require("lspconfig")
--local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

end

-- this part is telling Neovim to use the lsp server
local servers = { 'tsserver', "jsonls", "cssls", "html", "tailwindcss", "cssmodules_ls" }

for _, lsp in pairs(servers) do
   lspconfig[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        },
        detached = false,
    }
end

lspconfig.sumneko_lua.setup{
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
  detached = false,
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"}
      },
      runtime = {
        version = "LuaJIT"
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
        }
      }
    }
  }
}



-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end

return servers
