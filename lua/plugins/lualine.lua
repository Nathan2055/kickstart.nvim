-- lualine
-- https://github.com/nvim-lualine/lualine.nvim
-- Status line plugin

---@module 'lazy'
---@type LazySpec
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = { theme = 'vscode' },
}
