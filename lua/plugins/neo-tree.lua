return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>o",
        function()
          require("neo-tree.command").execute({ focus = true })
        end,
        desc = "Focus Neo Tree",
      },
    },
    opts = {
      window = {
        position = "left",
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
}
