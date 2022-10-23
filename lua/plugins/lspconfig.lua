local lspconfig = require("lspconfig")
--local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

end

-- this part is telling Neovim to use the lsp server
local servers = { 'tsserver', "sumneko_lua", "jsonls", "cssls", "html", "tailwindcss", "cssmodules_ls" }

local sumneko_diagnostic = {
  globals = {"vim"}
}

for _, lsp in pairs(servers) do
    local diagnostic = {}
    if(lsp == "sumneko_lua") then
      diagnostic = sumneko_diagnostic
    end
    lspconfig[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        },
        detached = false,
        diagnostic = diagnostic
      }
end



-- this is for diagnositcs signs on the line number column
-- use this to beautify the plain E W signs to more fun ones
-- !important nerdfonts needs to be setup for this to work in your terminal
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " } 
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end

return servers
