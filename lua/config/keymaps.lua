-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>fs", "<cmd> Telescope lsp_document_symbols <CR>", { desc = "Symbols" })
map("n", "<C-d>", "<C-d>zz", { desc = "Move down half page center page" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up half page center page" })
map("n", "n", "nzzzv", { desc = "Search word with half page" })
map("n", "N", "Nzzzv", { desc = "Search word with half page" })

map("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

map("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search()<CR>', {
  desc = "Search on current file",
})

map("n", "<leader>rp", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {
  desc = "inline find replace",
})

map("i", "<C-h>", "<Left>", { desc = "Move Left" })
map("i", "<C-l>", "<Right>", { desc = "Move Right" })

-- git work tree keybindings
map("n", "<leader>gw", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", {
  desc = "show all branch in git-worktree",
})
map("n", "<leader>gW", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", {
  desc = "create new branch in git-worktree",
})

-- map("n", "<leader>/", "<cmd> Telescope buffers <CR>", { desc = "Telescope Buffer" })

-- map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected content down" })
-- map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected content up" })

-- map("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
-- map("i", "<C-e>", "<End>", { desc = "End of line" })
-- map("i", "<C-j>", "<Down>", { desc = "Move Down" })
-- map("i", "<C-k>", "<Up>", { desc = "Move Up" })
