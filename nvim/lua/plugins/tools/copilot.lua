return {
	{
		"github/copilot.vim",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			vim.g.copilot_no_tab_map = false
			vim.g.copilot_assume_mapped = false
			vim.g.copilot_tab_fallback = ""

			local keymap = vim.keymap.set
			keymap("i", "<Tab>", function()
				if require("copilot.suggestion").is_visible() then
					require("copilot.suggestion").accept()
				else
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
				end
			end, {
				silent = true,
				expr = true,
				script = true,
				replace_keycodes = false,
			})

			-- Additional keymaps (optional)
			keymap("i", "<M-[>", "<Plug>(copilot-previous)", { silent = true })
			keymap("i", "<M-]>", "<Plug>(copilot-next)", { silent = true })
			keymap("i", "<M-\\>", "<Plug>(copilot-suggest)", { silent = true })
			keymap("i", "<C-]>", "<Plug>(copilot-dismiss)", { silent = true })
		end,
	},
}
