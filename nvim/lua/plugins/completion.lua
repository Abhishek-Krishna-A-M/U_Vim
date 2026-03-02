return {
  "saghen/blink.cmp",
  event = "VeryLazy",

  dependencies = {
    "L3MON4D3/LuaSnip",
  },

  opts = {
    sources = {
      default = { "lsp", "path", "buffer" },
    },

    completion = {
      documentation = {
        auto_show = false,
      },
    },

    keymap = {
      preset = "none",

      ["<Tab>"]   = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<CR>"]  = { "accept", "fallback" },
      ["<C-e>"] = { "cancel", "fallback" },

      ["<C-d>"] = { "show_documentation" },
      ["<C-u>"] = { "hide_documentation" },
    },

    snippets = {
      preset = "luasnip",
    },

    fuzzy = {
      implementation = "lua",
    },
  },
}
