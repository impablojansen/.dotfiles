return {
    'nvimdev/dashboard-nvim',
    dependencies = {
        { 'nvim-tree/nvim-web-devicons', 'rubiin/fortune.nvim', },
        { "MaximilianLloyd/ascii.nvim", requires = { "MunifTanjim/nui.nvim" }}
    },
    event = 'VimEnter',
    config = function()
        require('fortune').setup({
            max_width = 60,
            display_format = "short",
            content_type = "quotes",
        })

        local foot = function ()
            local fortune = require("fortune").get_fortune()
            return fortune
        end

        local head = function ()
            local val = require("ascii").art.text.neovim.sharp
            return val
        end
        require('dashboard').setup {
            theme = 'doom',
            config = {
                header = head(),
                center = {
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'New file',
                        desc_hl = 'group',
                        key = 'n',
                        key_hl = 'group',
                        key_format = ' [%s]',
                        action = ':ene',
                    },
                    {
                        icon = '󰮗 ',
                        icon_hl = 'group',
                        desc = 'Find file',
                        desc_hl = 'group',
                        key = 'f',
                        key_hl = 'group',
                        key_format = ' [%s]',
                        action = ':cd $HOME | Telescope find_files hidden=true',
                    },
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'Recent files',
                        desc_hl = 'group',
                        key = 'r',
                        key_hl = 'group',
                        key_format = ' [%s]',
                        action = ':Telescope oldfiles',
                    },
                    {
                        icon = ' ',
                        icon_hl = 'group',
                        desc = 'Configuration',
                        desc_hl = 'group',
                        key = 'c',
                        key_hl = 'group',
                        key_format = ' [%s]',
                        action = ':e ~/.config/nvim | Neotree dir=%:p',
                    },
                    {
                        icon = '󰈆 ',
                        icon_hl = 'group',
                        desc = 'Quit',
                        desc_hl = 'group',
                        key = 'q',
                        key_hl = 'group',
                        key_format = ' [%s]',
                        action = ':qa',
                    },
                },
                footer = foot()
            },
        }
    end,
}
