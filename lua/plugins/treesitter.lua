local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
  ensure_installed = { "javascript", "lua", "typescript" },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true
  },
  tree_docs = {
    enable = true,
  },
}
