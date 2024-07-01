return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",
    ft = require("filetypes"),

    config = function ()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "css",
                "html",
                "java",
                "javascript",
                "json",
                "lua",
                "perl",
                "python",
                "vimdoc",
            },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            indent = {
                enable = true,
            },
        })
    end,
}
