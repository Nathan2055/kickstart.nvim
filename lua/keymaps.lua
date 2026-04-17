-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set({ 'n' }, '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

vim.keymap.set({ 'n' }, '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set({ 't' }, '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set({ 'n' }, '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set({ 'n' }, '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set({ 'n' }, '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 'n' }, '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set({ 'n' }, '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set({ 'n' }, '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set({ 'n' }, '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set({ 'n' }, '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k', { desc = 'Move focus to the upper window' })
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k', { desc = 'Move focus to the upper window' })
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l', { desc = 'Move focus to the right window' })

-- barbar: buffer management keybinds
--  Move to previous/next
vim.keymap.set({ 'n' }, '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set({ 'n' }, '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
vim.keymap.set({ 'n' }, '<leader>b,', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set({ 'n' }, '<leader>b.', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
vim.keymap.set({ 'n' }, '<leader>bg,', '<Cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
vim.keymap.set({ 'n' }, '<leader>bg.', '<Cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
--  Re-order to previous/next
vim.keymap.set({ 'n' }, '<A-<>', '<Cmd>BufferMovePrevious<CR>', { desc = 'Reorder after previous buffer' })
vim.keymap.set({ 'n' }, '<A->>', '<Cmd>BufferMoveNext<CR>', { desc = 'Reorder after next buffer' })
vim.keymap.set({ 'n' }, '<leader>b<', '<Cmd>BufferMovePrevious<CR>', { desc = 'Reorder after previous buffer' })
vim.keymap.set({ 'n' }, '<leader>b>', '<Cmd>BufferMoveNext<CR>', { desc = 'Reorder after next buffer' })
--  Goto buffer in position...
vim.keymap.set({ 'n' }, '<A-1>', '<Cmd>BufferGoto 1<CR>', { desc = 'Goto buffer 1' })
vim.keymap.set({ 'n' }, '<A-2>', '<Cmd>BufferGoto 2<CR>', { desc = 'Goto buffer 2' })
vim.keymap.set({ 'n' }, '<A-3>', '<Cmd>BufferGoto 3<CR>', { desc = 'Goto buffer 3' })
vim.keymap.set({ 'n' }, '<A-4>', '<Cmd>BufferGoto 4<CR>', { desc = 'Goto buffer 4' })
vim.keymap.set({ 'n' }, '<A-5>', '<Cmd>BufferGoto 5<CR>', { desc = 'Goto buffer 5' })
vim.keymap.set({ 'n' }, '<A-6>', '<Cmd>BufferGoto 6<CR>', { desc = 'Goto buffer 6' })
vim.keymap.set({ 'n' }, '<A-7>', '<Cmd>BufferGoto 7<CR>', { desc = 'Goto buffer 7' })
vim.keymap.set({ 'n' }, '<A-8>', '<Cmd>BufferGoto 8<CR>', { desc = 'Goto buffer 8' })
vim.keymap.set({ 'n' }, '<A-9>', '<Cmd>BufferGoto 9<CR>', { desc = 'Goto buffer 9' })
vim.keymap.set({ 'n' }, '<A-0>', '<Cmd>BufferLast<CR>', { desc = 'Goto last buffer' })
vim.keymap.set({ 'n' }, '<leader>bg1', '<Cmd>BufferGoto 1<CR>', { desc = 'Goto buffer [1]' })
vim.keymap.set({ 'n' }, '<leader>bg2', '<Cmd>BufferGoto 2<CR>', { desc = 'Goto buffer [2]' })
vim.keymap.set({ 'n' }, '<leader>bg3', '<Cmd>BufferGoto 3<CR>', { desc = 'Goto buffer [3]' })
vim.keymap.set({ 'n' }, '<leader>bg4', '<Cmd>BufferGoto 4<CR>', { desc = 'Goto buffer [4]' })
vim.keymap.set({ 'n' }, '<leader>bg5', '<Cmd>BufferGoto 5<CR>', { desc = 'Goto buffer [5]' })
vim.keymap.set({ 'n' }, '<leader>bg6', '<Cmd>BufferGoto 6<CR>', { desc = 'Goto buffer [6]' })
vim.keymap.set({ 'n' }, '<leader>bg7', '<Cmd>BufferGoto 7<CR>', { desc = 'Goto buffer [7]' })
vim.keymap.set({ 'n' }, '<leader>bg8', '<Cmd>BufferGoto 8<CR>', { desc = 'Goto buffer [8]' })
vim.keymap.set({ 'n' }, '<leader>bg9', '<Cmd>BufferGoto 9<CR>', { desc = 'Goto buffer [9]' })
vim.keymap.set({ 'n' }, '<leader>bg0', '<Cmd>BufferLast<CR>', { desc = 'Goto last buffer' })
--  Pin/unpin buffer
vim.keymap.set({ 'n' }, '<leader>bpn', '<Cmd>BufferPin<CR>', { desc = 'Pi[n]/unpin buffer' })
--  Magic buffer-picking mode
vim.keymap.set({ 'n' }, '<leader>bpp', '<Cmd>BufferPick<CR>', { desc = '[P]ick buffer' })
vim.keymap.set({ 'n' }, '<leader>bpd', '<Cmd>BufferPickDelete<CR>', { desc = 'Pick [d]elete buffer' })
--  Goto pinned/unpinned buffer
vim.keymap.set({ 'n' }, '<leader>bgp', '<Cmd>BufferGotoPinned<CR>', { desc = 'Goto [p]inned buffer' })
vim.keymap.set({ 'n' }, '<leader>bgu', '<Cmd>BufferGotoUnpinned<CR>', { desc = 'Goto [u]npinned buffer' })
--  Close buffer
vim.keymap.set({ 'n' }, '<A-c>', '<Cmd>BufferClose<CR>', { desc = 'Close buffer' })
vim.keymap.set({ 'n' }, '<leader>bc', '<Cmd>BufferClose<CR>', { desc = '[C]lose buffer' })
--  Wipeout buffer
vim.keymap.set({ 'n' }, '<leader>bw', '<Cmd>BufferWipeout<CR>', { desc = '[W]ipeout buffer' })
--  Close multiple buffers
vim.keymap.set({ 'n' }, '<leader>bmc', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = 'Close all except [c]urrent' })
vim.keymap.set({ 'n' }, '<leader>bmp', '<Cmd>BufferCloseAllButPinned<CR>', { desc = 'Close all except [p]inned' })
vim.keymap.set({ 'n' }, '<leader>bmo', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', { desc = 'Close all except current [o]r pinned' })
vim.keymap.set({ 'n' }, '<leader>bml', '<Cmd>BufferCloseBuffersLeft<CR>', { desc = 'Close all to [l]eft' })
vim.keymap.set({ 'n' }, '<leader>bmr', '<Cmd>BufferCloseBuffersRight<CR>', { desc = 'Close all to [r]ight' })
--  Sort buffers automatically by...
vim.keymap.set({ 'n' }, '<leader>bsb', '<Cmd>BufferOrderByBufferNumber<CR>', { desc = 'Sort buffers by [b]uffer number' })
vim.keymap.set({ 'n' }, '<leader>bsn', '<Cmd>BufferOrderByName<CR>', { desc = 'Sort buffers by [n]ame' })
vim.keymap.set({ 'n' }, '<leader>bsd', '<Cmd>BufferOrderByDirectory<CR>', { desc = 'Sort buffers by [d]irectory' })
vim.keymap.set({ 'n' }, '<leader>bsl', '<Cmd>BufferOrderByLanguage<CR>', { desc = 'Sort buffers by [l]anguage' })
vim.keymap.set({ 'n' }, '<leader>bsw', '<Cmd>BufferOrderByWindowNumber<CR>', { desc = 'Sort buffers by [w]indow number' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
--vim.api.nvim_create_autocmd('TextYankPost', {
--  desc = 'Highlight when yanking (copying) text',
--  callback = function() vim.hl.on_yank() end,
--})
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- [[ Create user commands ]]
-- See `:h nvim_create_user_command()` and `:h user-commands`

-- Create a command `:GitBlameLine` that print the git blame for the current line
vim.api.nvim_create_user_command('GitBlameLine', function()
  local line_number = vim.fn.line '.' -- Get the current line number. See `:h line()`
  local filename = vim.api.nvim_buf_get_name(0)
  print(vim.fn.system { 'git', 'blame', '-L', line_number .. ',+1', filename })
end, { desc = 'Print the git blame for the current line' })

-- [[ Add optional packages ]]
-- Nvim comes bundled with a set of packages that are not enabled by
-- default. You can enable any of them by using the `:packadd` command.

-- For example, to add the "nohlsearch" package to automatically turn off search highlighting after
-- 'updatetime' and when going to insert mode
--vim.cmd 'packadd! nohlsearch'

-- vim: ts=2 sts=2 sw=2 et
