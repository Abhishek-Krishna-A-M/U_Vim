return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
    },
  },
}

