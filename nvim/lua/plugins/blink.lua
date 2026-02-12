return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        auto_show = true, -- menu appears once you start typing

        list = {
          selection = {
            preselect = false, -- nothing selected automatically
            auto_insert = false, -- never insert unless confirmed
          },
        },
      },

      keymap = {
        preset = "default",
      },
    },
  },
}
