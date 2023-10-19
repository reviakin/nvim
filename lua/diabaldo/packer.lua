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
      "neovim/nvim-lspconfig",
      "VonHeikemen/lsp-zero.nvim",
        -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
  }
  use 'tpope/vim-fugitive'
  use 'nvim-lualine/lualine.nvim'
end)

