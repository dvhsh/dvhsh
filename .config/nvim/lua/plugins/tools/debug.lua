return {
    {
      "mfussenegger/nvim-dap",
      dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-telescope/telescope-dap.nvim",
        "nvim-neotest/nvim-nio",  -- Add this dependency
      },
      config = function()
        local dap = require("dap")
        
        -- Configure C/C++ debugging
        dap.adapters.lldb = {
          type = 'executable',
          command = '/usr/bin/lldb-vscode', -- adjust path if needed
          name = 'lldb'
        }
  
        dap.configurations.cpp = {
          {
            name = 'Launch',
            type = 'lldb',
            request = 'launch',
            program = function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
            runInTerminal = false,
          },
        }
  
        dap.configurations.c = dap.configurations.cpp
  
        -- Set up UI
        require("dapui").setup()
  
        -- Keymaps
        vim.keymap.set('n', '<F5>', dap.continue, { desc = 'Debug: Start/Continue' })
        vim.keymap.set('n', '<F10>', dap.step_over, { desc = 'Debug: Step Over' })
        vim.keymap.set('n', '<F11>', dap.step_into, { desc = 'Debug: Step Into' })
        vim.keymap.set('n', '<F12>', dap.step_out, { desc = 'Debug: Step Out' })
        vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
        vim.keymap.set('n', '<leader>dB', function()
          dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
        end, { desc = 'Debug: Set Breakpoint' })
      end,
    },
  }
  