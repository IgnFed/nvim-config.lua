local lualine = require("lualine")

lualine.setup {
  options = { 
    theme  = "iceberg_dark",
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diagnostics" },
    lualine_c = {"diff"},
    lualine_x = { "windows", "fileformat" },
    lualine_y = { "encoding" },
    lualine_z = { "location" }
  },
}
