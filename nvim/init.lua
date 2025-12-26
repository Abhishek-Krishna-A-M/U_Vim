-- Fast startup
-- Theme (builtin, night-friendly)
vim.cmd.colorscheme('habamax')

-- Small night tweaks
vim.opt.termguicolors = true
vim.opt.cursorline = false

-- Calm diagnostics
vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  signs = true,
  float = { border = 'rounded' },
})
vim.loader.enable()
vim.opt.shortmess:append("I")
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd("Ex")
    end
  end,
})

-- Load core config
require('config.options')
require('config.keymaps')
require('config.snippets')

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require('lazy').setup(
  { import = 'plugins' },
  {
    defaults = { lazy = true },
    checker = { enabled = false },
    change_detection = { enabled = false },
  }
)

