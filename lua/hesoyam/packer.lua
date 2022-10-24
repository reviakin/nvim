return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    
    use("folke/tokyonight.nvim") -- theme

   
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- All the things
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")


    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' } -- Neogit
    use("nvim-lua/popup.nvim")


    use('nvim-lua/plenary.nvim')
    use("nvim-telescope/telescope.nvim")
    use ('nvim-treesitter/nvim-treesitter-context')

end)
