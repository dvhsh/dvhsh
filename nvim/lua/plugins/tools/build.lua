return {
    {
      "stevearc/overseer.nvim",
      opts = {
        templates = {
          "builtin",
          {
            name = "make build",
            builder = function()
              return {
                cmd = { "make" },
                components = { { "on_output_quickfix", open = true }, "default" },
              }
            end,
          },
          {
            name = "make run",
            builder = function()
              return {
                cmd = { "make", "run" },
                components = { { "on_output_quickfix", open = true }, "default" },
              }
            end,
          },
          {
            name = "make clean",
            builder = function()
              return {
                cmd = { "make", "clean" },
                components = { { "on_output_quickfix", open = true }, "default" },
              }
            end,
          },
        },
      },
      keys = {
        { "<leader>bb", "<cmd>OverseerBuild<cr>", desc = "[B]uild project" },
        { "<leader>br", "<cmd>OverseerRun<cr>", desc = "[R]un project" },
        { "<leader>bt", "<cmd>OverseerToggle<cr>", desc = "[T]oggle build output" },
      },
    },
  }
  