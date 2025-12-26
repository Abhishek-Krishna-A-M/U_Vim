return {
  'saghen/blink.cmp',
  event = 'InsertEnter',
  dependencies = {
{
  'L3MON4D3/LuaSnip',
  version = '2.*',
  build = nil, -- ❗ disable jsregexp build
}
  },
  opts = {
    sources = { default = { 'lsp', 'path' } },
    completion = { documentation = { auto_show = false } },
    snippets = { preset = 'luasnip' },
    fuzzy = {
  implementation = 'lua',
},

  },
}

