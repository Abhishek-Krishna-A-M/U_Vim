return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "tsx",
      "html",
      "css",
      "json",
      "c",
      "cpp",
      "go",
      "rust",
      "python",
    },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    -- IMPORTANT: disable heavy features
    indent = { enable = true },
    incremental_selection = { enable = false },
    textobjects = { enable = false },
  },
}
