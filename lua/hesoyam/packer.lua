return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    
    use("folke/tokyonight.nvim") -- theme

    use("neovim/nvim-lspconfig") -- lsp config
    
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })


    -- Neogit
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use("nvim-lua/popup.nvim")
    use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}


end)
