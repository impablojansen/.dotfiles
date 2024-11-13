return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local mason = require("mason")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "",
                    package_pending = "󰞌",
                    package_uninstalled = ""
                },
            },
        })

        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "html",
                "cssls",
                "tailwindcss",
                "gopls",
                "eslint",
                --"vuels",
                "volar",
            },
            automatic_installation = true,
        })
    end
}
