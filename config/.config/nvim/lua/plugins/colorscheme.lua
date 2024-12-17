return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			variant = "moon",
		})
        vim.cmd([[colorscheme rose-pine]])
        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	end,
}
