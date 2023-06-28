return {
  {
    "mbbill/undotree",
    keys = {
      {
        "<leader><F5>",
        function()
          vim.cmd.UndotreeToggle()
        end,
        desc = "open UndotreeToggle",
      },
    },
  },
}
