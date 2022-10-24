local lualine = require("lualine")

local custom_gruvbox = require'lualine.themes.codedark'

lualine.setup {
  options = { 
    theme  = custom_gruvbox,
  },
  sections = {
    lualine_c = { "os.date('🕐%a%d_%b')" },
    lualine_x = {"encoding", "filetype" ,"fileformat", "filesize"}
  },
}
