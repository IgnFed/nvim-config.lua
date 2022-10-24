local key = unpack(require("utils"))
local saga = require("lspsaga")
local shared_opts = {silent=true, remap=true}

saga.init_lsp_saga({
  border_style = "rounded",
  saga_winblend = 15,
  diagnostic_header = {"➤", "➤", "➤", "➤"},
  code_action_icon = "💡",
  symbol_in_winbar = {
    in_custom = true
  },
})

key("n", "fd", "<cmd>Lspsaga lsp_finder<CR>",shared_opts)
key({"i", "n", "v"}, "<F2>", "<cmd>Lspsaga rename<CR>", shared_opts)
key({"n", "i"}, "<Leader><Leader>", "<cmd>Lspsaga hover_doc<CR>",{remap=true})
key({"i", "n"}, "<C-x>", "<cmd>LSoutlineToggle<CR>", shared_opts)
key("n", "<Leader>c", "<cmd>Lspsaga code_action<CR>", shared_opts)
key("n", "<Leader>C", "<cmd>Lspsaga code_action<CR>", shared_opts)
key("n", "gd", "<cmd>Lspsaga peek_definition<CR>", shared_opts)

