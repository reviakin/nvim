return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use "nvim-lua/plenary.nvim"
  use 'nvim-treesitter/nvim-treesitter'
  use {
       "williamboman/mason.nvim",
       "williamboman/mason-lspconfig.nvim",
  }
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
  use 'tpope/vim-fugitive'
  -- use 'nvim-lualine/lualine.nvim'
  use 'ThePrimeagen/harpoon'
  use("mbbill/undotree")
end)

