return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Custom header with better spacing and design
    dashboard.section.header.val = {
         [[██╗   ██╗    ██╗   ██╗██╗███╗   ███╗]],
        [[██║   ██║    ██║   ██║██║████╗ ████║]],
        [[██║   ██║    ██║   ██║██║██╔████╔██║]],
        [[██║   ██║    ╚██╗ ██╔╝██║██║╚██╔╝██║]],
        [[╚██████╔╝     ╚████╔╝ ██║██║ ╚═╝ ██║]],
         [[ ╚═════╝       ╚═══╝  ╚═╝╚═╝     ╚═╝]],
        [[                                     ]],
        [[          Because U Matter            ]],
    }

    -- Custom menu buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
      dashboard.button("r", "⟳  Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
      dashboard.button("q", "󰈆  Quit Neovim", ":qa<CR>"),
    }


    -- Set highlight groups for colors
    dashboard.section.header.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"

    -- Layout configuration for better spacing
    dashboard.config.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
    }

    -- Disable folding on alpha buffer
    dashboard.config.opts.noautocmd = true

    -- Setup alpha
    alpha.setup(dashboard.config)

    -- Auto close alpha when opening a file
    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      desc = "disable status and tablines for alpha",
      callback = function()
        vim.go.laststatus = 0
        vim.opt.showtabline = 0
      end,
    })

    vim.api.nvim_create_autocmd("BufUnload", {
      buffer = 0,
      desc = "enable status and tablines after alpha",
      callback = function()
        vim.go.laststatus = 3
        vim.opt.showtabline = 2
      end,
    })
  end,
}
