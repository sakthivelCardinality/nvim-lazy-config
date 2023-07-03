return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "Shatur/neovim-ayu",
    config = function()
      -- bg set to "None" to make background transparent or any custom value. Default value "#1F2430"
      local bg = "None"
      local fg = "#CBCCC6"
      local fg_idle = "#607080"
      local panel_border = "#101521"

      require("ayu").setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        overrides = {
          Normal = { bg = bg, fg = fg },
          ColorColumn = { bg = bg },
          SignColumn = { bg = bg },
          Folded = { bg = bg, fg = fg_idle },
          FoldColumn = { bg = bg },
          CursorLine = { bg = bg },
          CursorColumn = { bg = bg },
          WhichKeyFloat = { bg = bg },
          VertSplit = { bg = bg, fg = panel_border },

          -- set line number color
          -- CursorLineNr = {
          --   fg = "#fff000",
          -- },
          LineNr = {
            fg = "#8400ff",
          },
        }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      })

      -- need to setup for the background when transparent
      -- require("notify").setup({
      --   background_colour = "#000000",
      -- })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "ayu",
    },
  },
}
