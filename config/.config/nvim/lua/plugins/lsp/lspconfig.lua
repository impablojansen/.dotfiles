return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            { "antosha417/nvim-lsp-file-operations", config = true },
        },
        config = function()
            local lspconfig = require("lspconfig")

            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local keymap = vim.keymap

            local opts = { noremap = true, silent = true }

            local on_attach = function(client, bufnr)
                opts.buffer = bufnr
                opts.desc = "See available code action"
                keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

                opts.desc = "Show documentation for what is under cursor"
                keymap.set("n", "K", vim.lsp.buf.hover, opts)

                opts.desc = "Rename something"
                keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
            end

            local capabilities = cmp_nvim_lsp.default_capabilities()

            local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }

            for type, icon in pairs(signs) do
                local hl = "DiagnosticSign" .. type
                vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
            end

            lspconfig["lua_ls"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                settings = { -- custom settings for lua
                    Lua = {
                        -- make the language server recognize "vim" global
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            -- make language server aware of runtime files
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                [vim.fn.stdpath("config") .. "/lua"] = true,
                            },
                        },
                    },
                },
            })

            lspconfig["gopls"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            --lspconfig["gopls"].setup({
            --    cmd = {
            --        "docker",
            --        "exec",
            --        "-i",
            --        "boring_bhaskara", --CONTAINER NAME
            --        "gopls",
            --    },
            --    root_dir = lspconfig.util.root_pattern("go.mod", ".git"), -- ROOT DIR DETECTION
            --    capabilities = capabilities,
            --    on_attach = on_attach,
            --    settings = {
            --        gopls = {
            --            analyses = {
            --                unusedparams = true,
            --            },
            --            staticcheck = true,
            --        },
            --    },
            --    filetypes = { "go", "gomod", "gowork", "gotmpl" },
            --})


            --lspconfig["tailwindcss"].setup({
            --	capabilities = capabilities,
            --	on_attach = on_attach,
            --})

            --lspconfig["ts_ls"].setup({
            --	capabilities = capabilities,
            --	on_attach = on_attach,
            --})

            --lspconfig["pyright"].setup({
            --	capabilities = capabilities,
            --	on_attach = on_attach,
            --})

            --lspconfig["eslint"].setup({
            --	capabilities = capabilities,
            --	on_attach = on_attach,
            --})

            --lspconfig["vuels"].setup({
            --	capabilities = capabilities,
            --	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
            --	on_attach = on_attach,
            --})
        end,
    },
}
