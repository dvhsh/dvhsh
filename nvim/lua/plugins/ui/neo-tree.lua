return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false,
			enable_git_status = true,
			enable_diagnostics = true,
			window = {
				position = "left",
				width = 30,
			},
			filesystem = {
				follow_current_file = true,
				filtered_items = {
					visible = true, -- Makes hidden files visible by default
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
					never_show = { -- These files will NEVER be shown
						".DS_Store",
						"thumbs.db",
					},
					hide_by_name = {
						-- These files will be hidden, but can be toggled with 'H'
						"node_modules",
						".git",
					},
				},
			},
		})

		-- Auto open neo-tree on startup
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				vim.cmd("Neotree toggle")
			end,
		})
	end,
	keys = {
		{ "<C-b>", ":Neotree toggle<CR>", desc = "Toggle Explorer", silent = true },
		{ "<leader>e", ":Neotree focus<CR>", desc = "Focus Explorer", silent = true },
	},
}
