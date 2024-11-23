return {
    'unblevable/quick-scope',
    config = function ()
        vim.cmd([[ highlight QuickScopePrimary guifg=#afff5f gui=underline ctermfg=155 cterm=underline ]])
        vim.cmd([[ highlight QuickScopeSecondary guifg=#5fffff gui=underline ctermfg=81 cterm=underline ]])
        --        vim.api.nvim_set_hl(0, "QuickScopePrimary", {
        --            fg = "#afff5f",
        --            underline = true,
        --            ctermfg = 155,
        --            cterm = "underline",
        --        })
        --        vim.api.nvim_set_hl(0, "QuickScopeSecondary", {
        --            fg = "#5fffff",
        --            underline = true,
        --            ctermfg = 81,
        --            cterm = "underline",
        --        })
    end
}
