return {
    {
        "nvim-tree/nvim-web-devicons",
        config = function ()
            require'nvim-web-devicons'.setup {
                strict = true;
            }
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                open_on_setup = false,
                close_if_last_window = true,
                window = {
                    position = "right",
                    width = 40
                },
                default_component_configs = {
                    indent = {
                        indent_size = 2,
                        padding = 1,
                        with_markers = true,
                        indent_marker = "|",
                        last_indent_marker = "└",
                        highlight = "NeoTreeIndentMarker",
                        -- expander config, needed for nesting files
                        with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
                        expander_collapsed = "",
                        expander_expanded = "",
                        expander_highlight = "NeoTreeExpander",
                    },
                },
            })
        end,
        vim.keymap.set('n', '<C-t>', ':Neotree filesystem reveal right toggle<CR>', {}),
    }
}
