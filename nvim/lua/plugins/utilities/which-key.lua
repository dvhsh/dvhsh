return {
	{
		"folke/which-key.nvim",
		event = "VimEnter",
		config = function()
			local wk = require("which-key")

			wk.setup({
				plugins = {
					marks = true,
					registers = true,
					spelling = {
						enabled = false,
					},
					presets = {
						operators = true,
						motions = true,
						text_objects = true,
						windows = true,
						nav = true,
						z = true,
						g = true,
					},
				},
			})

			-- Register key groups using new format
			wk.register({
				-- Leader key groups
				{ "<leader>c", group = "[C]ode" },
				{ "<leader>d", group = "[D]ebug" },
				{ "<leader>f", group = "[F]ind" },
				{ "<leader>g", group = "[G]it" },
				{ "<leader>h", group = "Git [H]unk" },
				{ "<leader>r", group = "[R]ename" },
				{ "<leader>s", group = "[S]earch" },
				{ "<leader>t", group = "[T]oggle" },
				{ "<leader>w", group = "[W]orkspace" },

				-- Hide the "_" mappings
				{ "<leader>c_", hidden = true },
				{ "<leader>d_", hidden = true },
				{ "<leader>f_", hidden = true },
				{ "<leader>g_", hidden = true },
				{ "<leader>h_", hidden = true },
				{ "<leader>r_", hidden = true },
				{ "<leader>s_", hidden = true },
				{ "<leader>t_", hidden = true },
				{ "<leader>w_", hidden = true },

				-- Example of specific mappings (add your actual mappings here)
				{
					"<leader>f",
					name = "[F]ind",
					f = { "<cmd>Telescope find_files<cr>", "Find File" },
					r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
					g = { "<cmd>Telescope live_grep<cr>", "Find Text" },
				},
				{
					"<leader>g",
					name = "[G]it",
					s = { "<cmd>Git<cr>", "Status" },
					b = { "<cmd>Git blame<cr>", "Blame" },
					l = { "<cmd>Git log<cr>", "Log" },
				},
			})

			-- Optional: Configure timeout
			vim.opt.timeout = true
			vim.opt.timeoutlen = 300
		end,
	},
}
