-- =========================
-- LEADER
-- =========================
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- =========================
-- FILE EXPLORER (OIL)
-- =========================
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>', opts)

-- =========================
-- TERMINAL
-- =========================
vim.keymap.set('n', '<leader>ts', '<cmd>split | terminal<CR>', opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- =========================
-- FILE OPS
-- =========================
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', opts)
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', opts)

-- =========================
-- EDITING
-- =========================
vim.keymap.set('n', 'x', '"_x', opts)
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', 'p', '"_dP', opts)

-- =========================
-- WINDOWS
-- =========================
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- =========================
-- BUFFERS (LEARNING-FRIENDLY)
-- =========================
vim.keymap.set('n', ']b', '<cmd>bnext<CR>', opts)
vim.keymap.set('n', '[b', '<cmd>bprev<CR>', opts)
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', opts)
vim.keymap.set('n', '<leader>nb', '<cmd>enew<CR>', opts)

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

