return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",

        {
            "williamboman/mason.nvim",

            cmd = {"Mason"},
            config = true,
        },

        {
            "williamboman/mason-lspconfig.nvim",

            opts = {
                ensure_installed = require("lsp_servers"),
            },
        },
    },

    ft = require("filetypes"),

    config = function ()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local servers = require("lsp_servers")

        for _, server in ipairs(servers) do
            lspconfig[server].setup({
                capabilities = capabilities,

                -- Disable Treesitter-conflicting syntax highlighting
                on_attach = function (client)
                    client.server_capabilities.semanticTokensProvider = nil
                end,
            })
        end
    end,
}
