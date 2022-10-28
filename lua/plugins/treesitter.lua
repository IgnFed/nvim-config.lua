local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
  ensure_installed = { "javascript", "lua", "typescript", "comment", "go", "gomod", "gowork", "sql" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  },
  tree_docs = {
    enable = true,
  },
}
