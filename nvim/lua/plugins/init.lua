return {
    {
        "ellisonleao/gruvbox.nvim",

        event = "VeryLazy",

        opts = {
            italic = {
                comments = false,
                strings = false,
            },
        },
    },

    {
        "lukas-reineke/indent-blankline.nvim",

        config = true,
        event = "InsertEnter",
        main = "ibl",
    },

    {
        "nvim-lualine/lualine.nvim",

        dependencies = {"nvim-tree/nvim-web-devicons"},

        config = true,
        event = "VeryLazy",
    },

    {
        "nvim-tree/nvim-tree.lua",

        dependencies = {"nvim-tree/nvim-web-devicons"},

        cmd = {"NvimTreeToggle"},
        config = true,
    },

    -- To be removed once the Ubuntu repos get Neovim v0.10.0+
    {
        "tpope/vim-commentary",
    },

    {
        "windwp/nvim-autopairs",

        config = true,
        event = "InsertEnter",
    },

    {
        "windwp/nvim-ts-autotag",

        dependencies = {"nvim-treesitter/nvim-treesitter"},

        config = true,
        ft = {"html", "javascript"},
    },
}
