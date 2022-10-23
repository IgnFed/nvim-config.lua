local Plug = vim.fn["plug#"]
local call = vim.call

call("plug#begin")
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
--  Plug 'nvim-lua/plenary.nvim'
--  Plug 'nvim-telescope/telescope.nvim'
--  Plug 'folke/noice.vim'
-- Plug 'MunifTanjim/nui.vim'
--  Plug 'rcarriga/nvim-notify'
  Plug "nvim-tree/nvim-tree"
  Plug 'hrsh7th/cmp-nvim-lsp-signature-help'


call("plug#end")

