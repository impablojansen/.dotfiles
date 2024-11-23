return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local harpoon = require("harpoon")
            harpoon:setup()
            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end)
            vim.keymap.set("n", "<C-p>", function() harpoon:list():previous() end)
            vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
            vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        end,
    }
}
