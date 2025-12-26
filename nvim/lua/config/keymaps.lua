-- Leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable space default
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- =========================
-- FILE EXPLORER (NETRW)
-- =========================
-- Fast, built-in, zero plugin
vim.keymap.set('n', '<leader>e', ':Ex<CR>', opts)

-- =========================
-- TERMINAL
-- =========================
vim.keymap.set('n', '<leader>ts', ':split | terminal<CR>', opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- =========================
-- FILE OPS
-- =========================
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', opts)
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w<CR>', opts)
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', opts)

-- =========================
-- EDITING
-- =========================
vim.keymap.set('n', 'x', '"_x', opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep yanked text when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- =========================
-- WINDOW MANAGEMENT
-- =========================
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)

-- Resize
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- =========================
-- BUFFERS (NATIVE)
-- =========================
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd>enew<CR>', opts)

-- =========================
-- TABS
-- =========================
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts)

-- =========================
-- UI
-- =========================
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- =========================
-- DIAGNOSTICS
-- =========================
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump { count = -1, float = true }
end)

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = 1, float = true }
end)

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
