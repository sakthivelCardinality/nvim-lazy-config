-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "symbols" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down half page center page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up half page center page" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Search word with half page" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search word with half page" })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected content down" })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected content up" })
