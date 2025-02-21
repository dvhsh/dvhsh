return {
  {
    "github/copilot.vim",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      -- Basic configuration
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      
      -- Accept suggestion
      vim.keymap.set('i', '<M-l>', 'copilot#Accept("<CR>")', {
        expr = true,
        replace_keycodes = false,
        silent = true,
      })
      
      -- Navigate suggestions
      vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)', { silent = true })
      vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)', { silent = true })
      
      -- Suggest/Dismiss
      vim.keymap.set('i', '<M-\\>', '<Plug>(copilot-suggest)', { silent = true })
      vim.keymap.set('i', '<C-]>', '<Plug>(copilot-dismiss)', { silent = true })
    end,
  },
}

