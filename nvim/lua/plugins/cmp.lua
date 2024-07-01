return {
    "hrsh7th/nvim-cmp",

    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },

    event = "InsertEnter",

    config = function ()
        local cmp = require("cmp")

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<Down>"] = cmp.mapping.select_next_item(),
                ["<Up>" ] = cmp.mapping.select_prev_item(),
                ["<CR>"] = cmp.mapping.confirm(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<C-j>"] = cmp.mapping.scroll_docs(4),
                ["<C-k>"] = cmp.mapping.scroll_docs(-4),
            }),

            snippet = {
                expand = function (args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },

            sources = cmp.config.sources({
                {name = "nvim_lsp"},
                {name = "luasnip"},
                {name = "buffer"},
            }),
        })
    end,
}
