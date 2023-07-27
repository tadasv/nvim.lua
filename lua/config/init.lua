vim.g.mapleader = " ";
vim.wo.number = true;
vim.wo.relativenumber = true;
vim.wo.signcolumn = 'no';
vim.cmd("syntax off");
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
