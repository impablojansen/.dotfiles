return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function ()
        require("catppuccin").setup({
            flavour="macchiato"
        })
        integrations = {
            cmp = true,
        }
        vim.cmd([[colorscheme catppuccin]])
    end
}
