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
  custom_kind = {
    Function = "#CBA6F7",
  },
})

key("n", "fd", "<cmd>Lspsaga lsp_finder<CR>",shared_opts)
key({"i", "n", "v"}, "<F2>", "<cmd>Lspsaga rename<CR>", shared_opts)
key("n", "<C-b>", "<cmd>Lspsaga hover_doc<CR>",shared_opts)
key({"i", "n"}, "<C-o>", "<cmd>Lspsaga open_floaterm<CR>", shared_opts)
key("t", "<C-o>", "<cmd>Lspsaga close_floaterm<CR>", shared_opts)
key({"i", "n"}, "<C-x>", "<cmd>LSoutlineToggle<CR>")


