-- VSCode Theme for Neovim
-- https://github.com/Mofiqul/vscode.nvim
-- Theme definition

---@module 'lazy'
---@type LazySpec
return {
  'Mofiqul/vscode.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'vscode'
  end,
}
