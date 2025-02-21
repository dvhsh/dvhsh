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

      wk.register({
        ["<leader>"] = {
          c = { name = "[C]ode", _ = "which_key_ignore" },
          d = { name = "[D]ebug", _ = "which_key_ignore" },
          f = { name = "[F]ind", _ = "which_key_ignore" },
          g = { name = "[G]it", _ = "which_key_ignore" },
          h = { name = "Git [H]unk", _ = "which_key_ignore" },
          r = { name = "[R]ename", _ = "which_key_ignore" },
          s = { name = "[S]earch", _ = "which_key_ignore" },
          t = { name = "[T]oggle", _ = "which_key_ignore" },
          w = { name = "[W]orkspace", _ = "which_key_ignore" },
        },
      })
    end,
  },
}
