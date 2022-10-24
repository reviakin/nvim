return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    
    use("folke/tokyonight.nvim") -- theme

    use("neovim/nvim-lspconfig") -- lsp config
    
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })


    -- Neogit
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
end)
