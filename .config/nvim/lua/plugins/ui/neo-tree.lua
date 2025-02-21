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
      window = {
        position = "left",
        width = 30,
      },
    })
  end,
  keys = {
    { "<C-b>", ":Neotree toggle<CR>", desc = "Toggle Explorer", silent = true },
  },
}
