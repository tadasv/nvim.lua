local keymap = vim.keymap

vim.g.mapleader = ' '

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- TODO
-- Navigating to definitions, references
-- <cmd>Telescope lsp_*
keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>')
keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>')

keymap.set('n', '<F12>', vim.cmd.EslintFixAll)

-- toggle between ligh/dark colorscheme with F11 in normal mode
vim.keymap.set('n', '<F11>', function()
  local current_bg = vim.opt.background:get()
  local new_bg = (current_bg == 'dark') and 'light' or 'dark'
  vim.opt.background = new_bg
end, { expr = true })
