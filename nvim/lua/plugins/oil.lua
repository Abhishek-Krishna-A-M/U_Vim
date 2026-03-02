return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  opts = {
    default_file_explorer = true, -- replace netrw
    delete_to_trash = false,
    skip_confirm_for_simple_edits = true,

    view_options = {
      show_hidden = false,
      natural_order = true,
    },

    float = {
      padding = 2,
      border = "rounded",
    },

opts = {
  keymaps = {
    ["<CR>"] = "actions.select",
    ["-"] = "actions.parent",
    ["q"] = "actions.close",

    -- 👇 PREVIEW
    ["p"] = function()
      require("oil").open_preview()
    end,
  },
}
  },
  keys = {
    { "-", "<cmd>Oil<CR>", desc = "Open parent directory (Oil)" },
{ "<leader>e", "<cmd>Oil<CR>", desc = "File explorer" },
  },
}
