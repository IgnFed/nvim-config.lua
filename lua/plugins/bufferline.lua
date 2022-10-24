local bufferline = require("bufferline")
local key = unpack(require("utils"))


vim.opt.termguicolors = true
vim.g.mousemoveevent = true

bufferline.setup{
  options = {
   diagnostics = "nvim_lsp",
    color_icons = true,
    show_close_icon = false,
    hover = {
      enabled = true,
      delay = 200,
      reveal = {"close"}
    }
  }
}

key({"n", "v"}, "<Leader>q", "<cmd>bdelete %<CR>", {})
key({"n", "v"}, "<Tab>", "<cmd>BufferLineCycleNext<CR>", {})
key({"n", "v"}, "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>",{})
