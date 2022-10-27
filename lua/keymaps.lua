local key = unpack(require("utils"))

key({ "i", "n", "v" }, "<C-s>", "<cmd>w<CR>", {})
key({ "i", "n", "v" }, "<C-r>", "<ESC>:source %<CR>", {})
key({ "i", "n", "v" }, "<C-l>", "<C-W>l", {})
key({ "i", "n", "v" }, "<C-j>", "<C-W>j", {})
key({ "i", "n", "v" }, "<C-k>", "<C-W>k", {})
key({ "i", "n", "v" }, "<C-h>", "<C-W>h", {})
key({ "i", "n" }, "<C-z>", "<ESC>u<CR>a", {})
key({ "i", "n" }, "<C-Z>", "<ESC>u<CR>a", {})
key({ "i", "n" }, "<S-q>", "<ESC>q<CR>", {})
key({ "i", "n" }, "<S-Right>", "<ESC>:vsplit<CR>", {})
key({ "i", "n" }, "<S-Up>", "<ESC>:split<CR>", {})
key({ "i", "n" }, "<S-Down>", "<ESC>:split<CR>", {})
key({ 'i', 'n' }, "<A-m>", "<cmd>NvimTreeToggle<CR>")
key({ 'i', 'n' }, "C_<S-}>", "<C-LeftMouse>", {})
key({ 'n', 'v' }, 'ff', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', {})
key({'n'}, '}', '<cmd>lua vim.api.nvim_win_set_height(0, 10)<CR>',{})
key({'n'}, '{', '<cmd>lua vim.api.nvim_win_set_height(0, 30)<CR>',{})
key({'n'}, ']', '<cmd>lua vim.api.nvim_win_set_width(0, 10)<CR>',{})
key({'n'}, '[', '<cmd>lua vim.api.nvim_win_set_width(0, 30)<CR>',{})
