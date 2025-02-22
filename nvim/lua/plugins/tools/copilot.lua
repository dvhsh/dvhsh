return {
	{
		"github/copilot.vim",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
			vim.g.copilot_tab_fallback = ""

			-- Use Control + L for autocomplete
			vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

			-- Additional keymaps
			vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)", { silent = true })
			vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)", { silent = true })
			vim.keymap.set("i", "<M-\\>", "<Plug>(copilot-suggest)", { silent = true })
			vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", { silent = true })
		end,
	},
}
