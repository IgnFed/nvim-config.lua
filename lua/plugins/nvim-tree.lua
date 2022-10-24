vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local nvim_tree = require('nvim-tree') 

nvim_tree.setup({
  sort_by = "name",
  open_on_setup = true,
  update_focused_file = {
    enable = true,
    ignore_list = {"node_modules", "dist", "out", ".cache", ".next", "build"}
  },
  diagnostics = {
    enable = true,
    icons = { hint = "", info = "", warning = "", error = "" }
  },
  view = {
    side = "right",
    signcolumn = "yes",
    adaptive_size = true,
  },
  renderer = {
    add_trailing = true,
    group_empty = false,
    highlight_git = true,
    highlight_opened_files = "all",
    indent_width = 2,
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "▶",
          arrow_open = "▼",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        }
      }
    }
  }
})
