return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        julials = {
          cmd = { "julia", "--startup-file=no", "--history-file=no", "-e", "using LanguageServer; runserver()" },
        },
        pyright = {},
        rust_analyzer = {},
        omnisharp = {},
        clangd = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                disable = { "missing-fields" },
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
      },
    },
  },
}
