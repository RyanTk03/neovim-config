return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",         -- UI toolkit requis
    "rcarriga/nvim-notify",         -- (optionnel, pour les notifs)
  },
  config = function()
    require("noice").setup({
      cmdline = {
        enabled = true,
        view = "cmdline_popup", -- ou "cmdline" pour plus simple
      },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
      },
      lsp = {
        progress = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
        hover = {
          enabled = false,
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = 5,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
      }
    })
  end
}

