return {
    -- LSP
    require("plugins/lsp/lspconfig"),
  
    -- Completion
    require("plugins/completion/cmp"),
  
    -- Theme
    require("plugins/themes/catppuccin"),
  
    -- Tools
    require("plugins/tools/telescope"),
    require("plugins/tools/copilot"),
    require("plugins/tools/build"),
    require("plugins/tools/debug"),
  
    -- UI
    require("plugins/ui/neo-tree"),
  
    -- Utilities
    require("plugins/utilities/treesitter"),
    require("plugins/utilities/conform"),
    require("plugins/utilities/git"),
    require("plugins/utilities/which-key"),
    require("plugins/utilities/mini"),
  
    -- Web Development
    require("plugins/web-dev"),
  }
  