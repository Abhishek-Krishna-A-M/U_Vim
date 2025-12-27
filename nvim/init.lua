-- =====================================================================
--  Neovim Init (Clean + Modular)
--  Loads options, keymaps, snippets, and plugin modules from lua/
-- =====================================================================

-- Leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Detect nerd font if you use one
vim.g.have_nerd_font = false

-- =====================================================================
--  Core Settings (moved to lua/config/options.lua)
-- =====================================================================
require 'config.options'

-- =====================================================================
--  Keymaps (moved to lua/config/keymaps.lua)
-- =====================================================================
require 'config.keymaps'

-- =====================================================================
--  Snippets (your custom snippets)
-- =====================================================================
require 'config.snippets'

-- =====================================================================
--  Setup lazy.nvim plugin manager
-- =====================================================================
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)

-- =====================================================================
--  Load plugins from lua/plugins/*
-- =====================================================================
require('lazy').setup('plugins', {
  change_detection = { notify = false },

  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤',
    },
  },
})

-- =====================================================================
--  Autocommands (optional: add your own in lua/config/autocmds.lua)
-- =====================================================================
local group = vim.api.nvim_create_augroup('HighlightYank', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  group = group,
  desc = 'Highlight text after yanking',
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- =====================================================================
--  Modeline
-- =====================================================================
-- vim: ts=2 sts=2 sw=2 et
