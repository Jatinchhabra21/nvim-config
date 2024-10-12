return {
    {
        'nvim-telescope/telescope.nvim', tag='0.1.8', dependencies={'nvim-lua/plenary.nvim'}, lazy=false
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function()
        vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    end },
    { "nvim-treesitter/nvim-treesitter", build=":TSUpdate" },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {"tpope/vim-fugitive"},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp', event="InsertEnter", dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        {
            "L3MON4D3/LuaSnip",
            -- follow latest release.
            version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
            -- install jsregexp (optional!).
            build = "make install_jsregexp",
        },
        "saadparwaiz1/cmp_luasnip", -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
        "onsails/lspkind.nvim", -- vs-code like pictograms
    },},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
}
