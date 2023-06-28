return {
  {
    {
      "jose-elias-alvarez/null-ls.nvim",
      opts = function(_, opts)
        local null_ls = require("null-ls")

        local b = null_ls.builtins
        local formatting = b.formatting
        local diagnostics = b.diagnostics

        opts.sources = vim.list_extend(opts.sources, {
          formatting.black,
          formatting.stylua,
          formatting.deno_fmt,
          formatting.prettier.with({ filetypes = { "html", "css", "markdown" } }),
          -- formatting.prettier,
          formatting.rustfmt,
          formatting.isort,
          formatting.clang_format,
          diagnostics.mypy,
          diagnostics.ruff,
          -- diagnostics.eslint,
        })
      end,
    },
  },
}
