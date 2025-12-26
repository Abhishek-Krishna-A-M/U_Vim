return {
  'neovim/nvim-lspconfig',
  event = 'BufReadPre',
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} }, -- optional, harmless
    'mason-org/mason-lspconfig.nvim',
  },
  config = function()
    -- Common on_attach
    local function on_attach(_, bufnr)
      local map = function(lhs, rhs)
        vim.keymap.set('n', lhs, rhs, { buffer = bufnr, silent = true })
      end
      map('gd', vim.lsp.buf.definition)
      map('gr', vim.lsp.buf.references)
      map('K', vim.lsp.buf.hover)
      map('<leader>rn', vim.lsp.buf.rename)
      map('<leader>ca', vim.lsp.buf.code_action)
    end

    -- =========================
    -- LSP CONFIGURATIONS
    -- =========================

    -- JS / TS / React
    vim.lsp.config('ts_ls', {
      on_attach = on_attach,
      settings = {
        typescript = { suggest = { autoImports = true } },
        javascript = { suggest = { autoImports = true } },
      },
    })

    -- Lua
    vim.lsp.config('lua_ls', {
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = { globals = { 'vim' } },
        },
      },
    })

    -- Python
    vim.lsp.config('pyright', {
      on_attach = on_attach,
      settings = {
        python = {
          analysis = {
            autoImportCompletions = true,
            typeCheckingMode = 'basic', -- fast, low-noise
          },
        },
      },
    })

    -- HTML
    vim.lsp.config('html', { on_attach = on_attach })

    -- CSS
    vim.lsp.config('cssls', { on_attach = on_attach })

    -- Tailwind CSS
    vim.lsp.config('tailwindcss', { on_attach = on_attach })

    -- JSON
    vim.lsp.config('jsonls', { on_attach = on_attach })

    -- C / C++
    vim.lsp.config('clangd', { on_attach = on_attach })

    -- Java
    vim.lsp.config('jdtls', { on_attach = on_attach })

    -- Go
    vim.lsp.config('gopls', { on_attach = on_attach })

    -- Rust
    vim.lsp.config('rust_analyzer', { on_attach = on_attach })

    -- =========================
    -- ENABLE SERVERS
    -- =========================
    vim.lsp.enable({
      'ts_ls',
      'lua_ls',
      'pyright',
      'html',
      'cssls',
      'tailwindcss',
      'jsonls',
      'clangd',
      'jdtls',
      'gopls',
      'rust_analyzer',
    })
  end,
}
