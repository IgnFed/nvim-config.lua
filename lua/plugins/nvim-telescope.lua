local telescope = require("telescope")
local builtin = require("telescope.builtin")
local key = unpack(require("utils"))


key({"n", "v"}, "ff", "<cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>",{silent=true})
key({"n", "v"}, 'fg', builtin.live_grep, {})
key({"n", "v"}, 'fb', builtin.buffers, {})
key({"n", "v"}, 'fh', builtin.help_tags, {})

telescope.setup{
  defaults = {
    ["C-h"] = "wich_key"
  },
  winblend = 60,
  prompt_prefix = "⩺",
  file_ignore_patterns = {"node_modules", "dist", "out", "build", ".cache", ".next"},

}
