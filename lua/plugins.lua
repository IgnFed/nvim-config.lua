-- local Plug = vim.fn["plug#"]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use({
    "glepnir/lspsaga.nvim",
    branch = "main"
  })
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use {'nvim-lualine/lualine.nvim', requires={'kyazdani42/nvim-web-devicons', opt = true}}
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
  use "terrortylor/nvim-comment"
  -- use({
  -- "folke/noice.nvim",
  -- event = "VimEnter",
  -- requires = {
  --  "MunifTanjim/nui.nvim",
  --  "rcarriga/nvim-notify",
  --   }
  -- })
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  use {
    "windwp/nvim-autopairs",
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-tree-docs"
  }

  if packer_bootstrap then
    require('packer').sync()
  end

end)

-- call("plug#begin")
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'glepnir/lspsaga.nvim'
-- Plug 'williamboman/mason-lspconfig.nvim'
-- Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'hrsh7th/cmp-cmdline'
-- Plug 'hrsh7th/nvim-cmp'
-- Plug 'hrsh7th/vim-vsnip'
-- Plug 'hrsh7th/vim-vsnip-integ'
-- Plug 'nvim-lua/plenary.nvim'
-- Plug 'nvim-telescope/telescope.nvim'
-- Plug 'folke/noice.vim'
-- Plug 'MunifTanjim/nui.vim'
-- Plug 'rcarriga/nvim-notify'
-- Plug "nvim-tree/nvim-tree"
-- Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
--  use 'nvim-lua/plenary.nvim'
--  use 'nvim-telescope/telescope.nvim'
--  use 'folke/noice.vim'
-- Plug 'MunifTanjim/nui.vim'
-- Plug 'rcarriga/nvim-notify'


-- call("plug#end")

