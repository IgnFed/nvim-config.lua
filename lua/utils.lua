local key = vim.keymap.set
local on_attach = function(client, bufnr)
  vim.cmd([[
    command! Format execute 'lua vim.lsp.buf.formatting_sync({async=true})'
  ]])
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end


return {
   key,
   on_attach
}
