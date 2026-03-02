return {
  -- 1. Simple Conflict Resolution
  {
    'akinsho/git-conflict.nvim',
    version = "*",
    config = function()
      require('git-conflict').setup({
        default_mappings = true, -- Adds mappings like 'co' for ours, 'ct' for theirs
      })
    end
  },

  -- 2. Powerful Git Management
  {
    'tpope/vim-fugitive',
  },
}
