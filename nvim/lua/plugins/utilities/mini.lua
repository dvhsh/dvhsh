return {
  {
    "echasnovski/mini.nvim",
    config = function()
      -- Better Around/Inside textobjects
      require("mini.ai").setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      require("mini.surround").setup()

      -- Simple and easy statusline
      require("mini.statusline").setup()

      -- ... and there is more!
      require("mini.comment").setup()
      require("mini.pairs").setup()
      require("mini.indentscope").setup({
        symbol = "│",
        options = { try_as_border = true },
      })
    end,
  },
}
