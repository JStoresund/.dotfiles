return {
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
  {
    "olrtg/nvim-emmet",
    ft = { "html", "css", "javascriptreact", "typescriptreact" },
    config = function()
      vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
    end,
  },
  {
    "pmizio/typescript-tools.nvim",
    opts = {},
  },
}
