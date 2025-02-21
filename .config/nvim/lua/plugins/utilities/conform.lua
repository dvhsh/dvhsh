return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				-- Lua
				lua = { "stylua" },

				-- Web development
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },

				-- C/C++
				c = { "clang_format" },
				cpp = { "clang_format" },
			},
			-- Set up format-on-save
			format_on_save = {
				-- I recommend these options. See :help conform.format for details
				lsp_fallback = true,
				timeout_ms = 500,
			},
			-- Customize formatters
			formatters = {
				clang_format = {
					prepend_args = { "--style=file" }, -- This will look for .clang-format file
				},
			},
		},
	},
}

