-- Ultra-clean, high-performance misc plugins
return {

  -- Tmux navigation (zero overhead)
  {
    'christoomey/vim-tmux-navigator',
  },

  -- Auto-detect indentation (very light)
  {
    'tpope/vim-sleuth',
  },

  -- Git integration (medium cost, but only loads on command)
  {
    'tpope/vim-fugitive',
    cmd = { "Git", "G", "GBrowse", "Gdiffsplit" },
  },

  -- OPTIONAL: GitHub integration for fugitive (loads only when opening GitHub)
  {
    'tpope/vim-rhubarb',
    event = "VeryLazy",
  },

  -- Lightweight TODO highlights (lazy-loaded)
  {
    'folke/todo-comments.nvim',
    event = "BufReadPost",
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },

  -- Colorizer (lazy-load for performance)
  {
    'norcalli/nvim-colorizer.lua',
    event = "BufReadPost",
    config = function()
      require('colorizer').setup()
    end,
  },
}
