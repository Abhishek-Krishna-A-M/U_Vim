return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = { "nvim-lua/plenary.nvim" },

  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end },
    { "<leader>fg", function() require("telescope.builtin").live_grep() end },
    { "<leader>fb", function() require("telescope.builtin").buffers() end },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end },
  },

  opts = {
defaults = {
  preview = true,
  sorting_strategy = "ascending",
  layout_config = { prompt_position = "top" },
},
  },
}
