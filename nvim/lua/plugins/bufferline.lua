return {
  "echasnovski/mini.tabline",
  version = false,
  config = function()
  require("mini.tabline").setup({
  format = function(buf_id, label)
    local name = vim.fn.fnamemodify(label, ":t")
    local parent = vim.fn.fnamemodify(label, ":h:t")

    if parent ~= "." then
      return parent .. "/" .. name
    end

    return name
  end,
})
  end,
}
