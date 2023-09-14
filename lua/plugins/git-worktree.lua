return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "ThePrimeagen/git-worktree.nvim",
      config = function()
        require("telescope").load_extension("git_worktree")
      end,
    },
  },
}
