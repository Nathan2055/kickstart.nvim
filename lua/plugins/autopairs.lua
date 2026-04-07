-- autopairs
-- https://github.com/windwp/nvim-autopairs
-- Automatic parenthesis and quote pairing

---@module 'lazy'
---@type LazySpec
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
}
