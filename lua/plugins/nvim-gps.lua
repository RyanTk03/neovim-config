return {
  "SmiteshP/nvim-gps",
  config = function()
    require("nvim-gps").setup({
      separator = " > ",  -- Séparateur entre les informations contextuelles
      disable_icons = false,  -- Active les icônes pour les structures de code
    })
  end
}
