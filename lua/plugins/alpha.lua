return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Définit des raccourcis personnalisés (exemple)
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", ":ene<CR>"),
      dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recently Used Files", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Définir un message stylisé pour l'écran d'accueil
    dashboard.section.header.val = {
      " ███╗   ██╗███████╗██╗   ██╗██████╗ ",
      " ████╗  ██║██╔════╝██║   ██║██╔══██╗",
      " ██╔██╗ ██║███████╗██║   ██║██████╔╝",
      " ██║╚██╗██║╚════██║██║   ██║██╔═══╝ ",
      " ██║ ╚████║███████║╚██████╔╝██║     ",
      " ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝     ",
    }

    -- Appliquer la configuration
    alpha.setup(dashboard.opts)
  end,
}
