return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "uloco/bluloco.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    opts = {
      style = "dark", -- "auto" | "dark" | "light"
      transparent = true,
      italics = true,
      terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
      guicursor = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bluloco",
    },
  },
}
