return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "eslint-lsp",
        "emmet-language-server",
        "tailwindcss-language-server",

        -- c/cpp stuff
        "clangd",
        "clang-format",

        -- rust
        "rust-analyzer",
        "rustfmt",

        -- python
        "pyright",
        "mypy",
        "ruff",
        "black",
        "isort",
      },
    },
  },
}
