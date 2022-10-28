---- vim.options --------------------------------------------------------------
local cmd = vim.cmd
local g = vim.g
local o = vim.opt -- not `vim.o`!
local wo = vim.wo

g.mapleader = ","
vim.g.syntax = true

vim.g.mouse = "a"
o.relativenumber = true
o.wrap = false


--o.backup = true
--o.backupcopy = "yes"
--o.backupdir = vim.fn.expand(vim.fn.stdpath('data') .. '/backup//')
o.breakindent = true
o.clipboard = "unnamed"
o.completeopt = "menu,menuone,noselect"

o.confirm = true
o.cursorline = true
o.expandtab = true
o.foldenable = false
wo.foldnestmax = 10
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldmethod = "expr"
o.hidden = true
o.ignorecase = true
o.joinspaces = false
o.lazyredraw = true
o.list = true
o.listchars = {eol = '↵'}
o.mouse = "a"
wo.number = true
o.scrolloff = 7
o.shiftwidth = 2
o.shortmess:append { c = true }
o.showbreak = "→ "
o.showmode = false
o.showtabline = 2
wo.signcolumn = "yes"
o.smartcase = true
o.smartindent = true
o.spellsuggest = "best,10"
o.tabstop = 2
g.splitright = false
g.splitbelow = true
o.termguicolors = true
o.textwidth = 100
o.timeoutlen = 650
o.title = true
o.undofile = true
o.updatetime = 250
o.visualbell = true

vim.g.emoji = true
vim.o.encoding = "utf-8"

g.background = "dark"

cmd([[
  :colorscheme molokai
]])

cmd([[
augroup vimrc
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]])
