-- which-key
-- https://github.com/folke/which-key.nvim
-- Useful plugin to show you pending keybinds.

---@module 'lazy'
---@type LazySpec
return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  ---@module 'which-key'
  ---@type wk.Opts
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font },

    -- Document existing key chains
    spec = {
      { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
      { 'gr', group = 'LSP Actions', mode = { 'n' } },
      -- Barbar keymap groups
      { '<leader>b', group = '[B]uffer actions', mode = { 'n' } },
      { '<leader>bg', group = '[G]oto buffer', mode = { 'n' } },
      { '<leader>bp', group = '[P]ick/pin buffers', mode = { 'n' } },
      { '<leader>bm', group = 'Close [m]ultiple buffers', mode = { 'n' } },
      { '<leader>bs', group = '[S]ort buffers', mode = { 'n' } },
    },
  },
}
