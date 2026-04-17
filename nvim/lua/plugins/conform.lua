return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = {
          "prettierd",
          "prettier",
        },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        json = { "prettier" },
        jsonc = { "prettier" },
        julia = { "juliaformatter" },
        yaml = { "prettier" },
        markdown = { "prettier" },
      },
    },
  },
}
