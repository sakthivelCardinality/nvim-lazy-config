return {
  "folke/which-key.nvim",
  optional = true,
  opts = {
    defaults = {
      ["<leader>d"] = { name = "+Debug" },
      ["<leader>da"] = { name = "+Adapters" },
      ["<leader>r"] = { name = "+Replace" },
      ["<leader>o"] = { name = "+Obsidian" },
    },
  },
}
