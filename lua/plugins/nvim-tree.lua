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
    mappings = {
      list = {
        { key = { "<2-RightMouse>", "<C-]>" }, action = "" }, -- cd
        { key = "v", action = "vsplit" }, -- vsplit
        { key = "<C-x>", action = "" }, -- split
        { key = "<C-t>", action = "" }, -- tabnew
        { key = "<BS>", action = "" }, -- close_node
        { key = "<Tab>", action = "" }, -- preview
        { key = "D", action = "" }, -- trash
        { key = "[e", action = "" }, -- prev_diag_item
        { key = "]e", action = "" }, -- next_diag_item
        { key = "[c", action = "" }, -- prev_git_item
        { key = "]c", action = "" }, -- next_git_item
        { key = "-", action = "" }, -- dir_up
        { key = "s", action = "" }, -- system_open
        { key = "W", action = "" }, -- collapse_all
        { key = "g?", action = "" }, -- toggle_help
        { key = "d", action = "remove" }, -- remove
        { key = "x", action = "cut" }, -- cut
        { key = "c", action = "cd" },
        { key = "<Space>p", action = "prev_diag_item" },
        { key = "<Space>.", action = "next_diag_item" },
        { key = "<Space>k", action = "prev_git_item" },
        { key = "<Space>j", action = "next_git_item" },
        { key = "u", action = "dir_up" },
        { key = "'", action = "close_node" },
        { key = '"', action = "collapse_all" },
        { key = "?", action = "toggle_help" },
      },
    },
  },
  renderer = {
    add_trailing = true,
    group_empty = false,
    highlight_git = true,
    highlight_opened_files = "all",
    indent_markers = {
      enable = true
    },
    indent_width = 2,
    icons = {
      git_placement = "signcolumn",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
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
        },
        git =  {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★",
            deleted = "",
            ignored = "◌",
        },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true
    },
  },
})
