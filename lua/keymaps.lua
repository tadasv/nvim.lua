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
